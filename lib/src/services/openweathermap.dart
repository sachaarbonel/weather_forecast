import 'package:http/http.dart' as http;
import 'package:weather_forecast/src/models/coordinates.dart';
import 'package:weather_forecast/src/models/display_weather.dart';
import 'package:weather_forecast/src/services/cache.dart';
import 'package:weather_forecast/weather_forecast.dart';
import 'package:meta/meta.dart';

abstract class WeatherRepository {
  final http.Client httpClient;
  final String apiKey;
  final WeatherForecastCache cache;

  WeatherRepository({this.httpClient, this.cache, this.apiKey});
  Future<DisplayWeather> getWeather({@required LatLon coordinates});
  Future<DisplayWeather> getWeatherOrCache(
      {@required LatLon coordinates}) async {
    DisplayWeather weather;
    if (cache.contains(coordinates) && !cache.has_expired(coordinates)) {
      weather = cache.get(coordinates);
    } else {
      weather = await getWeather(coordinates: coordinates);
      cache.set(coordinates, weather);
    }
    return weather;
  }
}

class OpenWeatherMapApi extends WeatherRepository {
  final String baseUrl = "https://api.openweathermap.org/data/2.5";

  OpenWeatherMapApi(
      {@required http.Client httpClient,
      @required String appId,
      @required WeatherForecastCache cache})
      : assert(httpClient != null, "httpClient should'nt be null"),
        assert(appId != null, "appId should'nt be null"),
        assert(cache != null, "cache should'nt be null"),
        super(httpClient: httpClient, apiKey: appId, cache: cache);

  /// Usage:
  /// final api = OpenWeatherMapApi(httpClient : http.Client(), appId: "a457e758ed0d9ab3fcc40xxxe")
  /// await api.getWeather(city: "Budapest");
  @override
  Future<DisplayWeather> getWeather({@required LatLon coordinates}) async {
    var params = {
      'lat': '${coordinates.lat}',
      'lon': '${coordinates.lon}',
      'appid': '$apiKey',
      'units': 'metric',
      'exclude': 'minutely,alerts',
    };
    var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

    var res = await http.get('$baseUrl/onecall?$query');
    if (res.statusCode != 200)
      throw Exception('http.get error: statusCode= ${res.statusCode}');

    return weatherResponseFromJson(res.body);
  }
}
