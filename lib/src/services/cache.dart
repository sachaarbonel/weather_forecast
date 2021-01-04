

import 'dart:collection';

import 'package:quiver/time.dart';
import 'package:weather_forecast/src/models/coordinates.dart';
import 'package:weather_forecast/src/models/display_weather.dart';

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