import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_forecast/weather_forecast.dart';

main() {
  testWidgets('test WeatherInfos', (WidgetTester tester) async {
    await tester.pumpWidget(Material(
        child: Directionality(
            textDirection: TextDirection.ltr,
            child: WeatherInfos(
              displayWeather: DisplayWeatherImpl(
                  description: "Partly Cloudly",
                  temp: 3.04,
                  pop: 0.03,
                  humidity: 88,
                  timeStamp: 1610100000,
                  city: "Budapest",
                  windSpeed: 3.01),
            ))));
    expect(find.text("Budapest", skipOffstage: false), findsOneWidget);
    expect(find.text("Partly Cloudly", skipOffstage: false), findsOneWidget);
    expect(find.text("Monday", skipOffstage: false), findsOneWidget);
    expect(find.text("11:15 AM", skipOffstage: false), findsOneWidget);
    expect(
        find.text("Precipitation: 3.0%", skipOffstage: false), findsOneWidget);
    expect(find.text("Humidity: 88%", skipOffstage: false), findsOneWidget);
    expect(find.text("Wind: 3.01 km/h", skipOffstage: false), findsOneWidget);
  });
}

class DisplayWeatherImpl extends DisplayWeather {
  DisplayWeatherImpl(
      {double temp,
      WeatherCondition weatherCondition,
      double pop,
      double humidity,
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
