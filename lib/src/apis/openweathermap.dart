import 'package:http/http.dart' as http;
import 'package:weather_forecast/weather_forecast.dart';
import 'package:meta/meta.dart';
abstract class WeatherApi {
  Future getWeather({@required String city});
}

class OpenWeatherMapApi extends WeatherApi {
  final http.Client httpClient;
  final String appId;

  OpenWeatherMapApi({@required this.httpClient,@required this.appId})
      : assert(httpClient != null, "httpClient should'nt be null"),
        assert(appId != null, "appId should'nt be null");

  /// Usage:
  /// final api = OpenWeatherMapApi(httpClient : http.Client(), appId: "a457e758ed0d9ab3fcc40xxxe")
  /// await getWeather(city: "Budapest");
  @override
  Future<WeatherResponse> getWeather({@required String city}) async {
    var params = {
      'q': "$city",
      'appid': "$appId",
      'units': 'metric',
    };
    var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');
  
    var res = await http
        .get('https://api.openweathermap.org/data/2.5/weather?$query');
    if (res.statusCode != 200)
      throw Exception(
          'http.get error: statusCode= ${res.statusCode}'); //TODO: custom exception

    return weatherResponseFromJson(res.body);
  }
}
