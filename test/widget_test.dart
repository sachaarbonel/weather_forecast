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
                  temp: 3.04, weatherCondition: WeatherCondition.clear),
            ))));

    expect(find.text("3.04°C", skipOffstage: false), findsOneWidget);
  });
}

class DisplayWeatherImpl extends DisplayWeather {
  DisplayWeatherImpl({
    double temp,
    WeatherCondition weatherCondition,
  }) : super(
          temp: temp,
          weatherCondition: weatherCondition,
        );

  @override
  List<Object> get props => [temp, weatherCondition];
}
