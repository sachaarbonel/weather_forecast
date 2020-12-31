import 'dart:io';

import 'package:weather_forecast/weather_forecast.dart';
import 'package:test/test.dart';

import 'mock_data.dart';
import 'utils.dart';

void main() {
  test('weatherResponseFromJson test', () async {
    final file = File(testPath('fixtures/weather_response.json'));
    final weather = weatherResponseFromJson(await file.readAsString());

    expect(weather, equals(getMockWeatherData()));
  });
}
