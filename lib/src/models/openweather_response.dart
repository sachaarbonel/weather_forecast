// To parse this JSON data, do
//
//     final weatherResponse = weatherResponseFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_forecast/src/models/coordinates.dart';
import 'package:weather_forecast/src/models/display_weather.dart';

WeatherResponse weatherResponseFromJson(String str) =>
    WeatherResponse.fromJson(json.decode(str));

String weatherResponseToJson(WeatherResponse data) =>
    json.encode(data.toJson());

Image conditionToImage(WeatherCondition condition) => {
      WeatherCondition.clouds: Image.asset('assets/020-clouds.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover),
      WeatherCondition.clear: Image.asset('assets/sun.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover),
      WeatherCondition.tornado: Image.asset('assets/036-tornado.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover),
      WeatherCondition.squall: Image.asset('assets/032-windy.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover),
      WeatherCondition.ash: Image.asset('assets/volcano.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover),
      WeatherCondition.dust: Image.asset('assets/dust.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //dust.png
      WeatherCondition.sand: Image.asset('assets/sand.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //sand.png
      WeatherCondition.fog: Image.asset('assets/foggy(1).png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //foggy(1).png
      // 'dustWhirls': WeatherCondition.dustWhirls,
      WeatherCondition.haze: Image.asset('assets/haze.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //haze.png
      WeatherCondition.smoke: Image.asset('assets/co2.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //co2.p,g
      WeatherCondition.mist: Image.asset('assets/foggy.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //foggy.png
      WeatherCondition.snow: Image.asset('assets/033-snow.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //033-snow.png
      WeatherCondition.rain: Image.asset('assets/002-rain.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //002-rain.png
      WeatherCondition.drizzle: Image.asset('assets/cloudy.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //cloudy.png
      WeatherCondition.thunderstorm: Image.asset('assets/005-thunderstorm.png',
          package: 'weather_forecast',
          height: 150,
          width: 150,
          fit: BoxFit.cover), //005-thunderstorm.png
    }[condition];

WeatherCondition getWeatherCondition(String condition) => {
      'Clouds': WeatherCondition.clouds, //020-clouds.png
      'Clear': WeatherCondition.clear, //sun.png
      'Tornado': WeatherCondition.tornado, //036-tornado.png
      'Squall': WeatherCondition.squall, //032-windy.png
      'Ash': WeatherCondition.ash, //volcano.png
      'Dust': WeatherCondition.dust, //dust.png
      'Sand': WeatherCondition.sand, //sand.png
      'Fog': WeatherCondition.fog, //foggy(1).png
      // 'dustWhirls': WeatherCondition.dustWhirls,
      'Haze': WeatherCondition.haze, //haze.png
      'Smoke': WeatherCondition.smoke, //co2.p,g
      'Mist': WeatherCondition.mist, //foggy.png
      'Snow': WeatherCondition.snow, //033-snow.png
      'Rain': WeatherCondition.rain, //002-rain.png
      'Drizzle': WeatherCondition.drizzle, //cloudy.png
      'Thunderstorm': WeatherCondition.thunderstorm, //005-thunderstorm.png
    }[condition];

class WeatherResponse extends DisplayWeather {
  WeatherResponse({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.hourly,
    this.daily,
  }) : super(
            temp: current.temp,
            weatherCondition: getWeatherCondition(current.weather.first.main),
            coordinates: LatLon(
              lat: lat,
              lon: lon,
            ));

  double lat;
  double lon;
  String timezone;
  int timezoneOffset;
  Current current;
  List<Current> hourly;
  List<Daily> daily;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      WeatherResponse(
        lat: json['lat'] == null ? null : json['lat'].toDouble(),
        lon: json['lon'] == null ? null : json['lon'].toDouble(),
        timezone: json['timezone'] == null ? null : json['timezone'],
        timezoneOffset:
            json['timezone_offset'] == null ? null : json['timezone_offset'],
        current:
            json['current'] == null ? null : Current.fromJson(json['current']),
        hourly: json['hourly'] == null
            ? null
            : List<Current>.from(
                json['hourly'].map((x) => Current.fromJson(x))),
        daily: json['daily'] == null
            ? null
            : List<Daily>.from(json['daily'].map((x) => Daily.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'lat': lat == null ? null : lat,
        'lon': lon == null ? null : lon,
        'timezone': timezone == null ? null : timezone,
        'timezone_offset': timezoneOffset == null ? null : timezoneOffset,
        'current': current == null ? null : current.toJson(),
        'hourly': hourly == null
            ? null
            : List<dynamic>.from(hourly.map((x) => x.toJson())),
        'daily': daily == null
            ? null
            : List<dynamic>.from(daily.map((x) => x.toJson())),
      };

  @override
  List<Object> get props => [temp, weatherCondition];

  Daily getDaily(int day) => daily.firstWhere((element) =>
      DateTime.fromMillisecondsSinceEpoch(element.dt).weekday == day);
}

class Current {
  Current({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.weather,
    this.pop,
    this.rain,
  });

  int dt;
  int sunrise;
  int sunset;
  double temp;
  double feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double uvi;
  int clouds;
  int visibility;
  double windSpeed;
  int windDeg;
  List<Weather> weather;
  double pop;
  Rain rain;

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        dt: json['dt'] == null ? null : json['dt'],
        sunrise: json['sunrise'] == null ? null : json['sunrise'],
        sunset: json['sunset'] == null ? null : json['sunset'],
        temp: json['temp'] == null ? null : json['temp'].toDouble(),
        feelsLike:
            json['feels_like'] == null ? null : json['feels_like'].toDouble(),
        pressure: json['pressure'] == null ? null : json['pressure'],
        humidity: json['humidity'] == null ? null : json['humidity'],
        dewPoint:
            json['dew_point'] == null ? null : json['dew_point'].toDouble(),
        uvi: json['uvi'] == null ? null : json['uvi'].toDouble(),
        clouds: json['clouds'] == null ? null : json['clouds'],
        visibility: json['visibility'] == null ? null : json['visibility'],
        windSpeed:
            json['wind_speed'] == null ? null : json['wind_speed'].toDouble(),
        windDeg: json['wind_deg'] == null ? null : json['wind_deg'],
        weather: json['weather'] == null
            ? null
            : List<Weather>.from(
                json['weather'].map((x) => Weather.fromJson(x))),
        pop: json['pop'] == null ? null : json['pop'].toDouble(),
        rain: json['rain'] == null ? null : Rain.fromJson(json['rain']),
      );

  Map<String, dynamic> toJson() => {
        'dt': dt == null ? null : dt,
        'sunrise': sunrise == null ? null : sunrise,
        'sunset': sunset == null ? null : sunset,
        'temp': temp == null ? null : temp,
        'feels_like': feelsLike == null ? null : feelsLike,
        'pressure': pressure == null ? null : pressure,
        'humidity': humidity == null ? null : humidity,
        'dew_point': dewPoint == null ? null : dewPoint,
        'uvi': uvi == null ? null : uvi,
        'clouds': clouds == null ? null : clouds,
        'visibility': visibility == null ? null : visibility,
        'wind_speed': windSpeed == null ? null : windSpeed,
        'wind_deg': windDeg == null ? null : windDeg,
        'weather': weather == null
            ? null
            : List<dynamic>.from(weather.map((x) => x.toJson())),
        'pop': pop == null ? null : pop,
        'rain': rain == null ? null : rain.toJson(),
      };
}

class Rain {
  Rain({
    this.the1H,
  });

  double the1H;

  factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        the1H: json['1h'] == null ? null : json['1h'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        '1h': the1H == null ? null : the1H,
      };
}

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  int id;
  String main;
  String description;
  String icon;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json['id'] == null ? null : json['id'],
        main: json['main'] == null ? null : json['main'],
        description: json['description'] == null ? null : json['description'],
        icon: json['icon'] == null ? null : json['icon'],
      );

  Map<String, dynamic> toJson() => {
        'id': id == null ? null : id,
        'main': main == null ? null : main,
        'description': description == null ? null : description,
        'icon': icon == null ? null : icon,
      };
}

class Daily {
  Daily({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.weather,
    this.clouds,
    this.pop,
    this.uvi,
    this.rain,
    this.snow,
  });

  int dt;
  int sunrise;
  int sunset;
  Temp temp;
  FeelsLike feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double windSpeed;
  int windDeg;
  List<Weather> weather;
  int clouds;
  double pop;
  double uvi;
  double rain;
  double snow;

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
        dt: json['dt'] == null ? null : json['dt'],
        sunrise: json['sunrise'] == null ? null : json['sunrise'],
        sunset: json['sunset'] == null ? null : json['sunset'],
        temp: json['temp'] == null ? null : Temp.fromJson(json['temp']),
        feelsLike: json['feels_like'] == null
            ? null
            : FeelsLike.fromJson(json['feels_like']),
        pressure: json['pressure'] == null ? null : json['pressure'],
        humidity: json['humidity'] == null ? null : json['humidity'],
        dewPoint:
            json['dew_point'] == null ? null : json['dew_point'].toDouble(),
        windSpeed:
            json['wind_speed'] == null ? null : json['wind_speed'].toDouble(),
        windDeg: json['wind_deg'] == null ? null : json['wind_deg'],
        weather: json['weather'] == null
            ? null
            : List<Weather>.from(
                json['weather'].map((x) => Weather.fromJson(x))),
        clouds: json['clouds'] == null ? null : json['clouds'],
        pop: json['pop'] == null ? null : json['pop'].toDouble(),
        uvi: json['uvi'] == null ? null : json['uvi'].toDouble(),
        rain: json['rain'] == null ? null : json['rain'].toDouble(),
        snow: json['snow'] == null ? null : json['snow'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'dt': dt == null ? null : dt,
        'sunrise': sunrise == null ? null : sunrise,
        'sunset': sunset == null ? null : sunset,
        'temp': temp == null ? null : temp.toJson(),
        'feels_like': feelsLike == null ? null : feelsLike.toJson(),
        'pressure': pressure == null ? null : pressure,
        'humidity': humidity == null ? null : humidity,
        'dew_point': dewPoint == null ? null : dewPoint,
        'wind_speed': windSpeed == null ? null : windSpeed,
        'wind_deg': windDeg == null ? null : windDeg,
        'weather': weather == null
            ? null
            : List<dynamic>.from(weather.map((x) => x.toJson())),
        'clouds': clouds == null ? null : clouds,
        'pop': pop == null ? null : pop,
        'uvi': uvi == null ? null : uvi,
        'rain': rain == null ? null : rain,
        'snow': snow == null ? null : snow,
      };
}

class FeelsLike {
  FeelsLike({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  double day;
  double night;
  double eve;
  double morn;

  factory FeelsLike.fromJson(Map<String, dynamic> json) => FeelsLike(
        day: json['day'] == null ? null : json['day'].toDouble(),
        night: json['night'] == null ? null : json['night'].toDouble(),
        eve: json['eve'] == null ? null : json['eve'].toDouble(),
        morn: json['morn'] == null ? null : json['morn'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'day': day == null ? null : day,
        'night': night == null ? null : night,
        'eve': eve == null ? null : eve,
        'morn': morn == null ? null : morn,
      };
}

class Temp {
  Temp({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  });

  double day;
  double min;
  double max;
  double night;
  double eve;
  double morn;

  factory Temp.fromJson(Map<String, dynamic> json) => Temp(
        day: json['day'] == null ? null : json['day'].toDouble(),
        min: json['min'] == null ? null : json['min'].toDouble(),
        max: json['max'] == null ? null : json['max'].toDouble(),
        night: json['night'] == null ? null : json['night'].toDouble(),
        eve: json['eve'] == null ? null : json['eve'].toDouble(),
        morn: json['morn'] == null ? null : json['morn'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'day': day == null ? null : day,
        'min': min == null ? null : min,
        'max': max == null ? null : max,
        'night': night == null ? null : night,
        'eve': eve == null ? null : eve,
        'morn': morn == null ? null : morn,
      };
}
