import 'package:flutter/material.dart';
import 'package:weather_forecast/weather_forecast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hey"),
      ),
      body: Center(
        child: WeatherInfos(
          displayWeather: DisplayWeatherImpl(
              description: "Partly Cloudly",
              temp: 3.04,
              pop: 0.03,
              humidity: 88,
              timeStamp: 1610100000,
              city: "Budapest",
              windSpeed: 3.01),
        ),
      ),
    );
  }
}

class DisplayWeatherImpl extends DisplayWeather {
  DisplayWeatherImpl(
      {double temp,
      WeatherCondition weatherCondition,
      double pop,
      int humidity,
      String description,
      String city,
      int timeStamp,
      double windSpeed})
      : super(
            temp: temp,
            weatherCondition: weatherCondition,
            pop: pop,
            humidity: humidity,
            windSpeed: windSpeed,
            timeStamp: timeStamp,
            city: city,
            description: description);

  @override
  List<Object> get props => [temp, weatherCondition];
}
