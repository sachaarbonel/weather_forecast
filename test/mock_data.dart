import 'package:weather_forecast/weather_forecast.dart';

WeatherResponse getMockWeatherData() => WeatherResponse(
    coord: Coord(lon: 19.04, lat: 47.5),
    weather: <Weather>[
      Weather(
          id: 300,
          main: "Drizzle",
          description: "light intensity drizzle",
          icon: "09d")
    ],
    base: "stations",
    main: Main(
        temp: 6.09,
        feelsLike: 3.15,
        tempMin: 5,
        tempMax: 7,
        pressure: 1006,
        humidity: 93),
    visibility: 10000,
    wind: Wind(speed: 2.6, deg: 310),
    clouds: Clouds(all: 90),
    dt: 1609422425,
    sys: Sys(
        type: 1,
        id: 6663,
        country: "HU",
        sunrise: 1609396296,
        sunset: 1609426921),
    timezone: 3600,
    id: 3054643,
    name: "Budapest",
    cod: 200);
