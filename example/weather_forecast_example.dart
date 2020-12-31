import 'package:http/http.dart' as http;

import 'package:weather_forecast/weather_forecast.dart';

Future<void> main() async {
  final openWeatherApi = OpenWeatherMapApi(
      httpClient: http.Client(), appId: "4e9c407e5962db67073767a4xxxxx");
  final weather = await openWeatherApi.getWeather(city: "Budapest");
  print(weather.main.temp);
}
