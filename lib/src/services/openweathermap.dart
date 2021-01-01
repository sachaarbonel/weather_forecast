import 'package:http/http.dart' as http;
import 'package:weather_forecast/src/models/display_weather.dart';
import 'package:weather_forecast/weather_forecast.dart';
import 'package:meta/meta.dart';

abstract class WeatherRepository {
  final http.Client httpClient;
  final String apiKey;

  WeatherRepository({this.httpClient, this.apiKey});
  Future<DisplayWeather> getWeather({@required String city});
}

class OpenWeatherMapApi extends WeatherRepository {
  final String baseUrl = "https://api.openweathermap.org/data/2.5";

  OpenWeatherMapApi({@required http.Client httpClient, @required String appId})
      : assert(httpClient != null, "httpClient should'nt be null"),
        assert(appId != null, "appId should'nt be null"),
        super(httpClient: httpClient, apiKey: appId);

  /// Usage:
  /// final api = OpenWeatherMapApi(httpClient : http.Client(), appId: "a457e758ed0d9ab3fcc40xxxe")
  /// await api.getWeather(city: "Budapest");
  @override
  Future<DisplayWeather> getWeather({@required String city}) async {
    var params = {
      'q': "$city",
      'appid': "$apiKey",
      'units': 'metric',
    };
    var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

    var res = await http.get('$baseUrl/weather?$query');
    if (res.statusCode != 200)
      throw Exception(
          'http.get error: statusCode= ${res.statusCode}');

    return weatherResponseFromJson(res.body);
  }
}
