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
        title: Text('hey'),
      ),
      body: Center(
        child: WeatherForecastSDK(
          coordinates: LatLon(
            lat: 47.5,
            lon: 19.04,
          ),
          apiKey: '4e9c407e5962db67073767a4be34a68f',
        ),
      ),
    );
  }
}
