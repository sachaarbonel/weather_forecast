import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
class LatLon extends Equatable {
  final double lat;
  final double lon;
  final DateTime _lastFetch;

  LatLon({@required this.lat, @required this.lon, DateTime lastFetch})
      : _lastFetch = lastFetch ?? DateTime.now();

  @override
  List<Object> get props => [lat, lon];

  DateTime get lastFetch => _lastFetch;
}
