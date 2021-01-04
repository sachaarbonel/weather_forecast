import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_forecast/src/models/coordinates.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class WeatherRequested extends WeatherEvent {
  final LatLon coordinates;

  const WeatherRequested({@required this.coordinates}) : assert(coordinates != null);

  @override
  List<Object> get props => [coordinates];
}