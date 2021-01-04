import 'package:flutter_test/flutter_test.dart';
import 'package:weather_forecast/src/models/coordinates.dart';
import 'package:weather_forecast/src/services/cache.dart';
import 'package:weather_forecast/weather_forecast.dart';
import 'package:quiver/testing/src/async/fake_async.dart';

class DisplayWeatherImpl extends DisplayWeather {
  DisplayWeatherImpl({
    double temp,
    WeatherCondition weatherCondition,
  }) : super(
          temp: temp,
          weatherCondition: weatherCondition,
        );

  @override
  List<Object> get props => [
        temp,
        weatherCondition,
      ];
}

void main() {
  DisplayWeather weather;
  DateTime lastFetch;

  setUp(() {
    weather = DisplayWeatherImpl(
        temp: 3.04, weatherCondition: WeatherCondition.clear);

    lastFetch = DateTime(2021, DateTime.january, DateTime.sunday, 18, 30, 5);
  });
  test('test cache has expired', () {
    FakeAsync().run((self) {
      var clock = self.getClock(
          DateTime(2021, DateTime.january, DateTime.sunday, 18, 30, 11));
      var latLon = LatLon(lon: 19.04, lat: 47.5, lastFetch: lastFetch);
      final cache = WeatherForecastCache(entries: [MapEntry(latLon, weather)]);

      expect(cache.has_expired(latLon, clock), true);
    });
  });

  test("test cache did'nt expired", () {
    FakeAsync().run((self) {
      var clock = self.getClock(
          DateTime(2021, DateTime.january, DateTime.sunday, 18, 30, 6));
      var latLon = LatLon(lon: 19.04, lat: 47.5, lastFetch: lastFetch);
      final cache = WeatherForecastCache(entries: [MapEntry(latLon, weather)]);

      expect(cache.has_expired(latLon, clock), false);
    });
  });
}
