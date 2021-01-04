import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_forecast/src/bloc/bloc.dart';
import 'package:weather_forecast/src/services/cache.dart';
import 'package:weather_forecast/weather_forecast.dart';

class MockWeatherBloc extends MockBloc<WeatherState> implements WeatherBloc {}

class MockOpenWeatherMapApi extends Mock implements OpenWeatherMapApi {}

class MockWeatherForecastCache extends Mock implements WeatherForecastCache {}
