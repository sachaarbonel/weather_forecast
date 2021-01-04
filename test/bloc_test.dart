import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:weather_forecast/src/bloc/bloc.dart';
import 'package:weather_forecast/src/models/coordinates.dart';

import 'mock_data.dart';
import 'mocks.dart';

void main() async {
  group('whenListen', () {
    test("Let's mock the MockWeatherBloc's stream!", () {
      // Create Mock MockWeatherBloc Instance
      final bloc = MockWeatherBloc();

      // Stub the listen with a fake Stream
      whenListen(
          bloc,
          Stream.fromIterable([
            WeatherInitial(),
            WeatherLoadInProgress(),
            WeatherLoadSuccess(weather: getMockWeatherData()),
            WeatherLoadFailure()
          ]));

      // Expect that the MockWeatherBloc instance emitted the stubbed Stream of
      // states
      expectLater(
          bloc,
          emitsInOrder([
            WeatherInitial(),
            WeatherLoadInProgress(),
            WeatherLoadSuccess(weather: getMockWeatherData()),
            WeatherLoadFailure()
          ]));
    });
  });

  group('MockWeatherBloc', () {
    final mockOpenWeatherMapApi = MockOpenWeatherMapApi();
    when(mockOpenWeatherMapApi.getWeatherOrCache(
        day: DateTime.monday,
        coordinates: LatLon(
          lat: 47.5,
          lon: 19.04,
        ))).thenAnswer((_) => Future.value(getMockWeatherData()));
    blocTest<WeatherBloc, WeatherState>(
      'emits WeatherLoadInProgress WeatherLoadSuccess',
      build: () => WeatherBloc(weatherRepository: mockOpenWeatherMapApi),
      skip: 1,
      act: (bloc) async => bloc.add(WeatherRequested(
          day: DateTime.monday,
          coordinates: LatLon(
            lat: 47.5,
            lon: 19.04,
          ))),
      expect: <WeatherState>[WeatherLoadSuccess(weather: getMockWeatherData())],
    );
  });

  group('MockWeatherBloc exception', () {
    final mockOpenWeatherMapApi = MockOpenWeatherMapApi();
    when(mockOpenWeatherMapApi.getWeatherOrCache(
        day: DateTime.monday,
        coordinates: LatLon(
          lat: 47.5,
          lon: 19.04,
        ))).thenThrow(Exception);
    blocTest<WeatherBloc, WeatherState>(
      'emits WeatherLoadFailure',
      build: () => WeatherBloc(weatherRepository: mockOpenWeatherMapApi),
      act: (bloc) async => bloc.add(WeatherRequested(
        day: DateTime.monday,
          coordinates: LatLon(
        lat: 47.5,
        lon: 19.04,
      ))),
      expect: <WeatherState>[WeatherLoadInProgress(), WeatherLoadFailure()],
    );
  });
}
