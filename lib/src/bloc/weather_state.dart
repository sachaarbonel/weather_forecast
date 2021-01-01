import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_forecast/src/models/display_weather.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoadInProgress extends WeatherState {}

class WeatherLoadSuccess extends WeatherState {
  final DisplayWeather weather;

  const WeatherLoadSuccess({@required this.weather}) : assert(weather != null);

  @override
  List<Object> get props => [weather];
}

class WeatherLoadFailure extends WeatherState {}