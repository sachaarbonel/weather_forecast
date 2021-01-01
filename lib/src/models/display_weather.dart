import 'package:equatable/equatable.dart';

abstract class DisplayWeather extends Equatable {
  final double temp;
  final WeatherCondition weatherCondition;

  DisplayWeather({this.temp, this.weatherCondition});
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
