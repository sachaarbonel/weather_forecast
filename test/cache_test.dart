import 'dart:collection';

import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiver/time.dart';
import 'package:weather_forecast/weather_forecast.dart';
import 'package:quiver/testing/src/async/fake_async.dart';

class DisplayWeatherImpl extends DisplayWeather {
  DisplayWeatherImpl(
      {double temp,
      WeatherCondition weatherCondition,
      double pop,
      double humidity,
      String description,
      String city,
      int timeStamp,
      double windSpeed})
      : super(
            temp: temp,
            weatherCondition: weatherCondition,
            pop: pop,
            humidity: humidity,
            windSpeed: windSpeed,
            timeStamp: timeStamp,
            city: city,
            description: description);

  @override
  List<Object> get props => [
        temp,
        weatherCondition,
        pop,
        humidity,
        windSpeed,
        timeStamp,
        city,
        description
      ];
}

class LatLon extends Equatable {
  final double lat;
  final double lon;
  final DateTime lastFetch;

  LatLon({this.lat, this.lon, this.lastFetch});

  @override
  List<Object> get props => [lat, lon];
}

class WeatherForecastCache {
  final _cache = HashMap<LatLon, DisplayWeather>();
  final int ttl;

  WeatherForecastCache(
      {this.ttl = 5,
      List<MapEntry<LatLon, DisplayWeather>> entries,
      Clock clock}) {
    if (entries != null) {
      _cache.addEntries(entries);
    }
  }

  DisplayWeather get(LatLon term) {
    return _cache[term];
  }

/// ```dart 
/// if (contains.contains(latLon) && !cache.has_expired(latLon)){
/// weather = cache.get(latLon);
/// } else {
/// weather = getWeather(city:"Budapest");
/// cache.set(latLon,weather);
/// }
// ```
  bool has_expired(LatLon term, [Clock clock]) {
    final ttl_duration = Duration(seconds: ttl);
    final now = clock?.now() ?? DateTime.now();
    final diff = now.difference(
        _cache.keys.firstWhere((element) => element == term).lastFetch);
    if (diff.inSeconds < ttl_duration.inSeconds) {
      return false;
    } else {
      return true;
    }
  }

  void set(LatLon latLon, DisplayWeather result) => _cache[latLon] = result;

  bool contains(LatLon latLon) => _cache?.containsKey(latLon);

  //void remove(LatLon latLon) => _cache.remove(latLon);
}

main() {
  DisplayWeather weather;
  DateTime lastFetch;

  setUp(() {
    weather = DisplayWeatherImpl(
        description: "Partly Cloudly",
        temp: 3.04,
        pop: 0.03,
        humidity: 88,
        timeStamp: 1610100000,
        city: "Budapest",
        windSpeed: 3.01);

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
