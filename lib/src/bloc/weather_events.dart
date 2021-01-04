import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_forecast/src/models/coordinates.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class WeatherRequested extends WeatherEvent {
  final LatLon coordinates;
  final int day;

  const WeatherRequested({
    @required this.coordinates,
    @required this.day,
  })  : assert(coordinates != null, "coordinates can't be null"),
        assert(day != null, "day can't be null");

  @override
  List<Object> get props => [coordinates,day];
}
