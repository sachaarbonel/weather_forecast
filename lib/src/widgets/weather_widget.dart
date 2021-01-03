import 'package:flutter/material.dart';
import 'package:weather_forecast/src/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/src/models/display_weather.dart';
import 'package:weather_forecast/src/services/openweathermap.dart';
import 'package:http/http.dart' as http;
import 'package:weather_forecast/utils/date.dart';

class WeatherForecastSDK extends StatelessWidget {
  WeatherRepository _weatherRepository;
  final Widget Function(WeatherLoadSuccess) onWeatherLoading;

  WeatherForecastSDK(
      {Key key,
      WeatherRepository repository,
      @required String apiKey,
      this.onWeatherLoading})
      : super(key: key) {
    _weatherRepository = repository ??
        OpenWeatherMapApi(
            appId: apiKey,
            httpClient: http
                .Client()); //you can wether use our OpenweatherApi implementation or implement your own
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(weatherRepository: _weatherRepository),
      child: _WeatherInfosBuilder(onWeatherLoading: onWeatherLoading),
    );
  }
}

class _WeatherInfosBuilder extends StatelessWidget {
  final Widget Function(WeatherState) onWeatherLoading;
  _WeatherInfosBuilder({this.onWeatherLoading});
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WeatherBloc>(context)
        .add(WeatherRequested(city: "Budapest"));
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${displayWeather.city}"),
                Row(
                  children: [
                    Text("${formatWeekDay(displayWeather.timeStamp)}"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("${formatHourMinute(displayWeather.timeStamp)}"),
                  ],
                ),
                Text("${displayWeather.description}"),
                Row(
                  children: [
                    Text("${displayWeather.temp}°C"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.wb_cloudy), //TODO: replace with proper assets
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                displayWeather.pop != null
                    ? Text("Precipitation: ${displayWeather.pop * 100}%")
                    : Container(),
                Text("Humidity: ${displayWeather.humidity}%"),
                Text("Wind: ${displayWeather.windSpeed} km/h")
              ],
            )
          ],
        )
      ],
    );
  }
}
