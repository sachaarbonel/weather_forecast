import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:weather_forecast/src/bloc/weather_bloc.dart';
import 'package:weather_forecast/src/bloc/weather_events.dart';
import 'package:weather_forecast/src/bloc/weather_state.dart';

import 'mock_data.dart';
import 'mocks.dart';

main() async {
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


  //Todo test failure
  group('MockWeatherBloc', () {
    final mockOpenWeatherMapApi = MockOpenWeatherMapApi();
    when(mockOpenWeatherMapApi.getWeather(city: 'Budapest'))
        .thenAnswer((_) => Future.value(getMockWeatherData()));
    blocTest<WeatherBloc, WeatherState>(
      'emits WeatherLoadInProgress WeatherLoadSuccess',
      build: () => WeatherBloc(weatherRepository: mockOpenWeatherMapApi),
      act: (bloc) async => bloc.add(WeatherRequested(city: "Budapest")),
      expect: <WeatherState>[
        WeatherLoadInProgress(),
        WeatherLoadSuccess(weather: getMockWeatherData())
      ],
    );
  });
}
