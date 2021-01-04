A library for Dart developers.


<p align="center">
  <a href="https://codecov.io/gh/sachaarbonel/weather_forecast"><img alt="Coverage" src="https://codecov.io/gh/sachaarbonel/weather_forecast/branch/master/graph/badge.svg?token=3PGFHEBDYM"></a>
  <a href="https://github.com/Asso-x-Asso/asso_carree/actions?query=workflow%3Aflutter-tests"><img alt="Flutter tests status" src="https://github.com/sachaarbonel/weather_forecast/workflows/flutter-tests/badge.svg"></a>
</p>

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:weather_forecast/weather_forecast.dart';

//to get weather forecast for next monday at those geocoodirnates
// simply use it like this
WeatherForecastSDK(
          day : DateTime.monday,
          coordinates: LatLon(
            lat: 47.5,
            lon: 19.04,
          ),
          apiKey: '4e9c407e5962db67073767a4be34a68f',
)
```

In pubspec, don't forget to import the assets we provide if you don't have your own:

```yaml
  assets:
    - packages/weather_forecast/020-clouds.png
    - packages/weather_forecast/assets/sun.png
    - packages/weather_forecast/assets/036-tornado.png
    - packages/weather_forecast/assets/032-windy.png
    - packages/weather_forecast/assets/volcano.png
    - packages/weather_forecast/assets/dust.png
    - packages/weather_forecast/assets/sand.png
    - packages/weather_forecast/assets/foggy(1).png
    - packages/weather_forecast/assets/haze.png
    - packages/weather_forecast/assets/co2.png
    - packages/weather_forecast/assets/foggy.png
    - packages/weather_forecast/assets/033-snow.png
    - packages/weather_forecast/assets/002-rain.png
    - packages/weather_forecast/assets/cloudy.png
    - packages/weather_forecast/assets/005-thunderstorm.png
```

If you want to handle logic you can
```dart
WeatherForecastSDK(
          day : DateTime.monday,
          coordinates: LatLon(
            lat: 47.5,
            lon: 19.04,
          ),
          onWeatherLoading: (state){
              //do somethong with temperature and weather condition
          }
          apiKey: '4e9c407e5962db67073767a4be34a68f',
)
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
