import 'package:weather_forecast/weather_forecast.dart';

WeatherResponse getMockWeatherData() => WeatherResponse(
      lat: 47.5,
      lon: 19.04,
      timezone: 'Europe/Budapest',
      timezoneOffset: 3600,
      current: Current(
        dt: 1609719692,
        sunrise: 1609741881,
        sunset: 1609772754,
        temp: 278.5,
        feelsLike: 275.42,
        pressure: 1013,
        humidity: 93,
        dewPoint: 277.46,
        uvi: 0,
        clouds: 75,
        visibility: 4800,
        windSpeed: 2.6,
        windDeg: 70,
        weather: <Weather>[
          Weather(id: 701, main: 'Mist', description: 'mist', icon: '50n')
        ]
      ),
      hourly: <Current>[
        Current(
          dt: 1609718400,
          temp: 278.5,
          feelsLike: 275.46,
          pressure: 1013,
          humidity: 93,
          dewPoint: 277.46,
          uvi: 0,
          clouds: 75,
          visibility: 10000,
          windSpeed: 2.55,
          windDeg: 49,
          weather: <Weather>[
            Weather(
              id: 803,
              main: 'Clouds',
              description: 'broken clouds',
              icon: '04n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609722000,
          temp: 277.61,
          feelsLike: 274.35,
          pressure: 1013,
          humidity: 94,
          dewPoint: 276.73,
          uvi: 0,
          clouds: 68,
          visibility: 10000,
          windSpeed: 2.66,
          windDeg: 67,
          weather: <Weather>[
            Weather(
              id: 803,
              main: 'Clouds',
              description: 'broken clouds',
              icon: '04n'
            )
          ],
          pop: 0.09
        ),
        Current(
          dt: 1609725600,
          temp: 277.57,
          feelsLike: 274.05,
          pressure: 1014,
          humidity: 92,
          dewPoint: 276.39,
          uvi: 0,
          clouds: 79,
          visibility: 10000,
          windSpeed: 2.95,
          windDeg: 67,
          weather: <Weather>[
            Weather(
              id: 803,
              main: 'Clouds',
              description: 'broken clouds',
              icon: '04n'
            )
          ],
          pop: 0.05
        ),
        Current(
          dt: 1609729200,
          temp: 277.5,
          feelsLike: 273.8,
          pressure: 1014,
          humidity: 92,
          dewPoint: 276.32,
          uvi: 0,
          clouds: 84,
          visibility: 10000,
          windSpeed: 3.18,
          windDeg: 76,
          weather: <Weather>[
            Weather(
              id: 803,
              main: 'Clouds',
              description: 'broken clouds',
              icon: '04n'
            )
          ],
          pop: 0.05
        ),
        Current(
          dt: 1609732800,
          temp: 277.57,
          feelsLike: 273.99,
          pressure: 1014,
          humidity: 93,
          dewPoint: 276.54,
          uvi: 0,
          clouds: 88,
          visibility: 10000,
          windSpeed: 3.07,
          windDeg: 85,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.01
        ),
        Current(
          dt: 1609736400,
          temp: 277.71,
          feelsLike: 274.69,
          pressure: 1014,
          humidity: 93,
          dewPoint: 276.81,
          uvi: 0,
          clouds: 90,
          visibility: 10000,
          windSpeed: 2.31,
          windDeg: 69,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609740000,
          temp: 277.64,
          feelsLike: 274.52,
          pressure: 1014,
          humidity: 94,
          dewPoint: 276.85,
          uvi: 0,
          clouds: 89,
          visibility: 10000,
          windSpeed: 2.47,
          windDeg: 68,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609743600,
          temp: 277.82,
          feelsLike: 274.13,
          pressure: 1014,
          humidity: 94,
          dewPoint: 276.95,
          uvi: 0,
          clouds: 94,
          visibility: 10000,
          windSpeed: 3.33,
          windDeg: 82,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609747200,
          temp: 278.23,
          feelsLike: 274.5,
          pressure: 1014,
          humidity: 91,
          dewPoint: 277,
          uvi: 0.15,
          clouds: 97,
          visibility: 10000,
          windSpeed: 3.37,
          windDeg: 80,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609750800,
          temp: 278.65,
          feelsLike: 274.7,
          pressure: 1015,
          humidity: 88,
          dewPoint: 276.97,
          uvi: 0.3,
          clouds: 98,
          visibility: 10000,
          windSpeed: 3.67,
          windDeg: 93,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609754400,
          temp: 278.96,
          feelsLike: 275.36,
          pressure: 1015,
          humidity: 87,
          dewPoint: 277.01,
          uvi: 0.47,
          clouds: 99,
          visibility: 10000,
          windSpeed: 3.21,
          windDeg: 92,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609758000,
          temp: 279.16,
          feelsLike: 275.77,
          pressure: 1013,
          humidity: 86,
          dewPoint: 277.01,
          uvi: 0.5,
          clouds: 99,
          visibility: 10000,
          windSpeed: 2.92,
          windDeg: 65,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609761600,
          temp: 279.56,
          feelsLike: 276.31,
          pressure: 1012,
          humidity: 83,
          dewPoint: 277.03,
          uvi: 0.42,
          clouds: 99,
          visibility: 10000,
          windSpeed: 2.69,
          windDeg: 53,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609765200,
          temp: 279.76,
          feelsLike: 276.55,
          pressure: 1012,
          humidity: 82,
          dewPoint: 277.06,
          uvi: 0.3,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.64,
          windDeg: 47,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609768800,
          temp: 279.72,
          feelsLike: 276.48,
          pressure: 1012,
          humidity: 83,
          dewPoint: 277.15,
          uvi: 0.11,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.72,
          windDeg: 45,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609772400,
          temp: 279.27,
          feelsLike: 276.43,
          pressure: 1012,
          humidity: 87,
          dewPoint: 277.4,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.2,
          windDeg: 47,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609776000,
          temp: 278.96,
          feelsLike: 276.51,
          pressure: 1012,
          humidity: 89,
          dewPoint: 277.41,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.65,
          windDeg: 23,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.01
        ),
        Current(
          dt: 1609779600,
          temp: 278.84,
          feelsLike: 276.65,
          pressure: 1011,
          humidity: 90,
          dewPoint: 277.33,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.29,
          windDeg: 25,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.05
        ),
        Current(
          dt: 1609783200,
          temp: 278.81,
          feelsLike: 276.36,
          pressure: 1011,
          humidity: 89,
          dewPoint: 277.16,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.62,
          windDeg: 3,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.05
        ),
        Current(
          dt: 1609786800,
          temp: 278.77,
          feelsLike: 276.44,
          pressure: 1010,
          humidity: 88,
          dewPoint: 277,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.39,
          windDeg: 3,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.13
        ),
        Current(
          dt: 1609790400,
          temp: 278.76,
          feelsLike: 276.62,
          pressure: 1010,
          humidity: 87,
          dewPoint: 276.79,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.07,
          windDeg: 328,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.17
        ),
        Current(
          dt: 1609794000,
          temp: 278.71,
          feelsLike: 276.15,
          pressure: 1010,
          humidity: 86,
          dewPoint: 276.72,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.62,
          windDeg: 306,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.29
        ),
        Current(
          dt: 1609797600,
          temp: 278.67,
          feelsLike: 275.73,
          pressure: 1010,
          humidity: 86,
          dewPoint: 276.6,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.15,
          windDeg: 322,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.29
        ),
        Current(
          dt: 1609801200,
          temp: 278.38,
          feelsLike: 275.15,
          pressure: 1009,
          humidity: 87,
          dewPoint: 276.43,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.53,
          windDeg: 315,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.26
        ),
        Current(
          dt: 1609804800,
          temp: 278.53,
          feelsLike: 274.77,
          pressure: 1009,
          humidity: 86,
          dewPoint: 276.4,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 3.29,
          windDeg: 305,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.22
        ),
        Current(
          dt: 1609808400,
          temp: 278.6,
          feelsLike: 274.64,
          pressure: 1008,
          humidity: 85,
          dewPoint: 276.39,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 3.55,
          windDeg: 308,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.19
        ),
        Current(
          dt: 1609812000,
          temp: 278.28,
          feelsLike: 275.42,
          pressure: 1008,
          humidity: 86,
          dewPoint: 276.2,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.93,
          windDeg: 342,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0.31
        ),
        Current(
          dt: 1609815600,
          temp: 278.06,
          feelsLike: 275.34,
          pressure: 1008,
          humidity: 87,
          dewPoint: 276.14,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.73,
          windDeg: 298,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10n'
            )
          ],
          pop: 0.43,
          rain: Rain(the1H: 0.29)
        ),
        Current(
          dt: 1609819200,
          temp: 277.98,
          feelsLike: 275.14,
          pressure: 1008,
          humidity: 86,
          dewPoint: 275.94,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 1.84,
          windDeg: 279,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10n'
            )
          ],
          pop: 0.51,
          rain: Rain(the1H: 0.2)
        ),
        Current(
          dt: 1609822800,
          temp: 277.82,
          feelsLike: 274.68,
          pressure: 1008,
          humidity: 86,
          dewPoint: 275.7,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.22,
          windDeg: 279,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10n'
            )
          ],
          pop: 0.51,
          rain:  Rain(the1H: 0.18)
        ),
        Current(
          dt: 1609826400,
          temp: 277.79,
          feelsLike: 274.41,
          pressure: 1009,
          humidity: 87,
          dewPoint: 275.86,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.6,
          windDeg: 267,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10n'
            )
          ],
          pop: 0.51,
          rain: Rain(the1H: 0.11)
        ),
        Current(
          dt: 1609830000,
          temp: 277.88,
          feelsLike: 274.36,
          pressure: 1009,
          humidity: 88,
          dewPoint: 276.08,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.86,
          windDeg: 271,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10d'
            )
          ],
          pop: 0.33,
          rain: Rain(the1H: 0.14)
        ),
        Current(
          dt: 1609833600,
          temp: 278.31,
          feelsLike: 274.49,
          pressure: 1010,
          humidity: 85,
          dewPoint: 276.06,
          uvi: 0.23,
          clouds: 100,
          visibility: 10000,
          windSpeed: 3.27,
          windDeg: 262,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0.25
        ),
        Current(
          dt: 1609837200,
          temp: 278.78,
          feelsLike: 274.06,
          pressure: 1010,
          humidity: 81,
          dewPoint: 275.89,
          uvi: 0.48,
          clouds: 100,
          visibility: 10000,
          windSpeed: 4.5,
          windDeg: 259,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0.21
        ),
        Current(
          dt: 1609840800,
          temp: 279.18,
          feelsLike: 274.34,
          pressure: 1010,
          humidity: 77,
          dewPoint: 275.56,
          uvi: 0.7,
          clouds: 100,
          visibility: 10000,
          windSpeed: 4.6,
          windDeg: 264,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0.21
        ),
        Current(
          dt: 1609844400,
          temp: 279.94,
          feelsLike: 275.03,
          pressure: 1010,
          humidity: 70,
          dewPoint: 275.04,
          uvi: 0.74,
          clouds: 100,
          visibility: 10000,
          windSpeed: 4.55,
          windDeg: 262,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0.13
        ),
        Current(
          dt: 1609848000,
          temp: 280.36,
          feelsLike: 275.26,
          pressure: 1010,
          humidity: 68,
          dewPoint: 275.04,
          uvi: 0.61,
          clouds: 100,
          visibility: 10000,
          windSpeed: 4.82,
          windDeg: 258,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0.13
        ),
        Current(
          dt: 1609851600,
          temp: 280.03,
          feelsLike: 275.41,
          pressure: 1010,
          humidity: 72,
          dewPoint: 275.39,
          uvi: 0.39,
          clouds: 100,
          visibility: 10000,
          windSpeed: 4.25,
          windDeg: 261,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609855200,
          temp: 279.74,
          feelsLike: 275.72,
          pressure: 1010,
          humidity: 73,
          dewPoint: 275.38,
          uvi: 0.15,
          clouds: 100,
          visibility: 10000,
          windSpeed: 3.38,
          windDeg: 262,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609858800,
          temp: 279.16,
          feelsLike: 275.43,
          pressure: 1011,
          humidity: 76,
          dewPoint: 275.39,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.97,
          windDeg: 256,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609862400,
          temp: 278.71,
          feelsLike: 275.04,
          pressure: 1011,
          humidity: 79,
          dewPoint: 275.37,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.9,
          windDeg: 263,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609866000,
          temp: 278.2,
          feelsLike: 274.77,
          pressure: 1012,
          humidity: 81,
          dewPoint: 275.32,
          uvi: 0,
          clouds: 100,
          visibility: 10000,
          windSpeed: 2.53,
          windDeg: 265,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609869600,
          temp: 277.68,
          feelsLike: 274.62,
          pressure: 1012,
          humidity: 84,
          dewPoint: 275.26,
          uvi: 0,
          clouds: 85,
          visibility: 10000,
          windSpeed: 1.99,
          windDeg: 259,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609873200,
          temp: 277.28,
          feelsLike: 274.72,
          pressure: 1012,
          humidity: 85,
          dewPoint: 275.02,
          uvi: 0,
          clouds: 0,
          visibility: 10000,
          windSpeed: 1.23,
          windDeg: 270,
          weather: <Weather>[
            Weather(
              id: 800,
              main: 'Clear',
              description: 'clear sky',
              icon: '01n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609876800,
          temp: 277.03,
          feelsLike: 274.38,
          pressure: 1012,
          humidity: 85,
          dewPoint: 274.83,
          uvi: 0,
          clouds: 0,
          visibility: 10000,
          windSpeed: 1.3,
          windDeg: 252,
          weather: <Weather>[
            Weather(
              id: 800,
              main: 'Clear',
              description: 'clear sky',
              icon: '01n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609880400,
          temp: 276.75,
          feelsLike: 274.23,
          pressure: 1013,
          humidity: 86,
          dewPoint: 274.72,
          uvi: 0,
          clouds: 0,
          visibility: 10000,
          windSpeed: 1.09,
          windDeg: 219,
          weather: <Weather>[
            Weather(
              id: 800,
              main: 'Clear',
              description: 'clear sky',
              icon: '01n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609884000,
          temp: 276.51,
          feelsLike: 274.16,
          pressure: 1013,
          humidity: 87,
          dewPoint: 274.6,
          uvi: 0,
          clouds: 0,
          visibility: 10000,
          windSpeed: 0.83,
          windDeg: 215,
          weather: <Weather>[
            Weather(
              id: 800,
              main: 'Clear',
              description: 'clear sky',
              icon: '01n'
            )
          ],
          pop: 0
        ),
        Current(
          dt: 1609887600,
          temp: 276.34,
          feelsLike: 274.46,
          pressure: 1013,
          humidity: 88,
          dewPoint: 274.57,
          uvi: 0,
          clouds: 0,
          visibility: 10000,
          windSpeed: 0.15,
          windDeg: 179,
          weather: <Weather>[
            Weather(
              id: 800,
              main: 'Clear',
              description: 'clear sky',
              icon: '01n'
            )
          ],
          pop: 0
        )
      ],
      daily: <Daily>[
        Daily(
          dt: 1609754400,
          sunrise: 1609741881,
          sunset: 1609772754,
          temp: Temp(
            day: 278.96,
            min: 276.92,
            max: 279.76,
            night: 278.67,
            eve: 278.96,
            morn: 277.57
          ),
          feelsLike: FeelsLike(
            day: 275.36,
            night: 275.73,
            eve: 276.51,
            morn: 273.99
          ),
          pressure: 1015,
          humidity: 87,
          dewPoint: 277.01,
          windSpeed: 3.21,
          windDeg: 92,
          weather: <Weather>[
            Weather(
              id: 804,
              main: 'Clouds',
              description: 'overcast clouds',
              icon: '04d'
            )
          ],
          clouds: 99,
          pop: 0.29,
          uvi: 0.5
        ),
        Daily(
          dt: 1609840800,
          sunrise: 1609828270,
          sunset: 1609859218,
          temp: Temp(
            day: 279.18,
            min: 276.51,
            max: 280.36,
            night: 276.51,
            eve: 278.71,
            morn: 277.98
          ),
          feelsLike: FeelsLike(
            day: 274.34,
            night: 274.16,
            eve: 275.04,
            morn: 275.14
          ),
          pressure: 1010,
          humidity: 77,
          dewPoint: 275.56,
          windSpeed: 4.6,
          windDeg: 264,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10d'
            )
          ],
          clouds: 100,
          pop: 0.51,
          rain: 0.92,
          uvi: 0.74
        ),
        Daily(
          dt: 1609927200,
          sunrise: 1609914656,
          sunset: 1609945684,
          temp: Temp(
            day: 276.85,
            min: 275.96,
            max: 279.37,
            night: 277.28,
            eve: 278.96,
            morn: 276.38
          ),
          feelsLike: FeelsLike(
            day: 273.81,
            night: 274.57,
            eve: 276.85,
            morn: 273.04
          ),
          pressure: 1012,
          humidity: 89,
          dewPoint: 275.26,
          windSpeed: 1.96,
          windDeg: 120,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10d'
            )
          ],
          clouds: 100,
          pop: 0.78,
          rain: 1.28,
          uvi: 0.58
        ),
        Daily(
          dt: 1610013600,
          sunrise: 1610001040,
          sunset: 1610032152,
          temp: Temp(
            day: 275.78,
            min: 275.15,
            max: 277.29,
            night: 275.25,
            eve: 276.54,
            morn: 275.74
          ),
          feelsLike: FeelsLike(
            day: 269.78,
            night: 272.68,
            eve: 272.24,
            morn: 270.71
          ),
          pressure: 1017,
          humidity: 79,
          dewPoint: 270.53,
          windSpeed: 5.6,
          windDeg: 304,
          weather: <Weather>[
            Weather(
              id: 500,
              main: 'Rain',
              description: 'light rain',
              icon: '10d'
            )
          ],
          clouds: 86,
          pop: 0.2,
          rain: 0.45,
          uvi: 0.83
        ),
        Daily(
          dt: 1610100000,
          sunrise: 1610087421,
          sunset: 1610118621,
          temp: Temp(
            day: 275.6,
            min: 274.6,
            max: 275.87,
            night: 274.88,
            eve: 275.82,
            morn: 274.95
          ),
          feelsLike: FeelsLike(
            day: 272.93,
            night: 269.99,
            eve: 271.48,
            morn: 272.49
          ),
          pressure: 1018,
          humidity: 91,
          dewPoint: 274.34,
          windSpeed: 1.22,
          windDeg: 114,
          weather: <Weather>[
            Weather(
              id: 600,
              main: 'Snow',
              description: 'light snow',
              icon: '13d'
            )
          ],
          clouds: 100,
          pop: 0.41,
          snow: 0.52,
          uvi: 0.58
        ),
        Daily(
          dt: 1610186400,
          sunrise: 1610173799,
          sunset: 1610205092,
          temp: Temp(
            day: 274.66,
            min: 273.88,
            max: 275.77,
            night: 275.77,
            eve: 274.71,
            morn: 274.23
          ),
          feelsLike: FeelsLike(
            day: 269.26,
            night: 272.26,
            eve: 269.46,
            morn: 268.66
          ),
          pressure: 1010,
          humidity: 89,
          dewPoint: 273.1,
          windSpeed: 4.85,
          windDeg: 78,
          weather: <Weather>[
            Weather(
              id: 616,
              main: 'Snow',
              description: 'rain and snow',
              icon: '13d'
            )
          ],
          clouds: 100,
          pop: 1,
          rain: 7.46,
          snow: 2.48,
          uvi: 1
        ),
        Daily(
          dt: 1610272800,
          sunrise: 1610260174,
          sunset: 1610291566,
          temp: Temp(
            day: 277.68,
            min: 274.96,
            max: 278.15,
            night: 274.96,
            eve: 276.42,
            morn: 276.79
          ),
          feelsLike: FeelsLike(
            day: 274.92,
            night: 270.68,
            eve: 272.05,
            morn: 273.65
          ),
          pressure: 998,
          humidity: 96,
          dewPoint: 277.13,
          windSpeed: 2.05,
          windDeg: 300,
          weather: <Weather>[
            Weather(
              id: 501,
              main: 'Rain',
              description: 'moderate rain',
              icon: '10d'
            )
          ],
          clouds: 100,
          pop: 1,
          rain: 17.36,
          uvi: 1
        ),
        Daily(
          dt: 1610359200,
          sunrise: 1610346547,
          sunset: 1610378040,
          temp: Temp(
            day: 274.47,
            min: 274.17,
            max: 274.78,
            night: 274.7,
            eve: 274.51,
            morn: 274.65
          ),
          feelsLike: FeelsLike(
            day: 271.65,
            night: 271.95,
            eve: 272.44,
            morn: 271.52
          ),
          pressure: 1017,
          humidity: 91,
          dewPoint: 273.27,
          windSpeed: 1.19,
          windDeg: 134,
          weather: <Weather>[
            Weather(
              id: 600,
              main: 'Snow',
              description: 'light snow',
              icon: '13d'
            )
          ],
          clouds: 100,
          pop: 0.78,
          snow: 2.2,
          uvi: 1
        )
      ]
    );
