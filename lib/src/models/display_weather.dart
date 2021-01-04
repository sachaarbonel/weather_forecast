import 'package:equatable/equatable.dart';

import 'coordinates.dart';

abstract class DisplayWeather extends Equatable {
  final double temp;
  final WeatherCondition weatherCondition;
  final LatLon coordinates;
  DisplayWeather({this.temp, this.weatherCondition, this.coordinates});
}

enum WeatherCondition {
  clouds,
  clear,
  tornado,
  squall,
  ash,
  dust,
  sand,
  fog,
  // dustWhirls,
  haze,
  smoke,
  mist,
  snow,
  rain,
  drizzle,
  thunderstorm,
}
