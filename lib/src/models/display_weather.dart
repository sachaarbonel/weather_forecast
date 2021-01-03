import 'package:equatable/equatable.dart';

abstract class DisplayWeather extends Equatable {
  final double temp;
  final double windSpeed;
  final WeatherCondition weatherCondition;
  final double humidity;
  final String description;
  final String city;
  final double pop;
  final int timeStamp;

  DisplayWeather(
      {this.temp,
      this.weatherCondition,
      this.pop,
      this.humidity,
      this.description,
      this.timeStamp,
      this.city,
      this.windSpeed});
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
