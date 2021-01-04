import 'package:flutter/material.dart';
import 'package:weather_forecast/src/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/src/models/coordinates.dart';
import 'package:weather_forecast/src/models/display_weather.dart';
import 'package:weather_forecast/src/services/cache.dart';
import 'package:weather_forecast/src/services/openweathermap.dart';
import 'package:http/http.dart' as http;

class WeatherForecastSDK extends StatelessWidget {
  WeatherRepository _weatherRepository;
  final Widget Function(WeatherLoadSuccess) onWeatherLoading;
  final LatLon coordinates;
  final int day;

  WeatherForecastSDK(
      {Key key,
      WeatherRepository repository,
      @required String apiKey,
      @required this.coordinates,
      this.onWeatherLoading,
      @required this.day})
      : assert(apiKey != null, "apiKey can't be null"),
        assert(coordinates != null, "coordinates can't be null"),
        assert(day != null, "day can't be null"),
        super(key: key) {
    _weatherRepository = repository ??
        OpenWeatherMapApi(
            appId: apiKey,
            cache: WeatherForecastCache(),
            httpClient: http
                .Client()); //you can wether use our OpenweatherApi implementation or implement your own
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(weatherRepository: _weatherRepository),
      child: _WeatherInfosBuilder(
          onWeatherLoading: onWeatherLoading,
          coordinates: coordinates,
          day: day),
    );
  }
}

class _WeatherInfosBuilder extends StatelessWidget {
  final Widget Function(WeatherState) onWeatherLoading;
  final int day;
  final LatLon coordinates;
  _WeatherInfosBuilder(
      {this.onWeatherLoading, @required this.coordinates, @required this.day});
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WeatherBloc>(context)
        .add(WeatherRequested(coordinates: coordinates, day: day));
    return BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
      if (state is WeatherInitial) {
        return Center(child: Text('Please Select a Location'));
      }
      if (state is WeatherLoadInProgress) {
        return Center(child: CircularProgressIndicator());
      }
      if (state is WeatherLoadSuccess) {
        final weather = state.weather;
        return onWeatherLoading == null
            ? WeatherInfos(
                displayWeather: weather,
              )
            : onWeatherLoading(state);
      }
      if (state is WeatherLoadFailure) {
        return Text(
          'Something went wrong!',
          style: TextStyle(color: Colors.red),
        );
      }
    });
  }
}

class WeatherInfos extends StatelessWidget {
  final DisplayWeather displayWeather;
  const WeatherInfos({Key key, this.displayWeather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${displayWeather.temp}°C'),
        SizedBox(
          width: 5,
        ),
        Icon(Icons.wb_cloudy),
      ],
    );
  }
}
