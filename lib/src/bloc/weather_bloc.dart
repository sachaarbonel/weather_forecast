import 'package:weather_forecast/src/services/openweathermap.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:weather_forecast/src/bloc/bloc.dart';
import 'package:weather_forecast/weather_forecast.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({@required this.weatherRepository})
      : assert(
            weatherRepository != null, "weatherRepository should'nt be null"),
        super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is WeatherRequested) {
      yield WeatherLoadInProgress();
      final coordinates = event.coordinates;
      try {
        final weather =await weatherRepository.getWeatherOrCache(coordinates:coordinates);

        yield WeatherLoadSuccess(weather: weather);
      } catch (_) {
        yield WeatherLoadFailure();
      }
    }
  }
}
