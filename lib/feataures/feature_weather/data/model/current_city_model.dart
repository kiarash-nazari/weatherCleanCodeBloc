import 'package:weather/feataures/feature_weather/domain/entities/current_city_entity.dart';

class CurrentCityModel extends CurrentCityEntity {
  const CurrentCityModel({
    Coord? coord,
    List<Weather>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Rain? rain,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) : super(
          weather: weather,
          coord: coord,
          base: base,
          clouds: clouds,
          cod: cod,
          dt: dt,
          id: id,
          main: main,
          name: name,
          rain: rain,
          sys: sys,
          timezone: timezone,
          visibility: visibility,
          wind: wind,
        );

  factory CurrentCityModel.fromMap(Map<String, dynamic> json) =>
      CurrentCityModel(
        coord: json['coord'] == null ? null : Coord.fromMap(json['coord']),
        weather: json['weather'] == null
            ? null
            : List<Weather>.from(
                json['weather'].map((e) => Weather.fromMap(e))),
        base: json['base'],
        main: json['main'] == null ? null : Main.fromMap(json['main']),
        visibility: json['visibility'],
        wind: json['wind'] == null ? null : Wind.fromMap(json['wind']),
        rain: json['rain'] == null ? null : Rain.fromMap(json['rain']),
        clouds: json['clouds'] == null ? null : Clouds.fromMap(json['clouds']),
        dt: json['dt'],
        sys: json['sys'] == null ? null : Sys.fromMap(json['sys']),
        timezone: json['timezone'],
        id: json['id'],
        name: json['name'],
        cod: json['cod'],
      );
}

class Sys {
  Sys({
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  });

  factory Sys.fromMap(Map<String, dynamic> map) => Sys(
        type: map['type'],
        id: map['id'],
        country: map['country'],
        sunrise: map['sunrise'],
        sunset: map['sunset'],
      );

  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  Map<String, dynamic> toMap() => {
        'type': type,
        'id': id,
        'country': country,
        'sunrise': sunrise,
        'sunset': sunset,
      };
}

class Clouds {
  Clouds({this.all});

  factory Clouds.fromMap(Map<String, dynamic> map) => Clouds(
        all: map['all'],
      );

  int? all;

  Map<String, dynamic> toMap() => {
        'all': all,
      };
}

class Rain {
  Rain({this.h});

  factory Rain.fromMap(Map<String, dynamic> map) => Rain(
        h: map['1h'],
      );

  double? h;

  Map<String, dynamic> toMap() => {
        '1h': h,
      };
}

class Wind {
  Wind({
    this.speed,
    this.deg,
    this.gust,
  });

  factory Wind.fromMap(Map<String, dynamic> map) => Wind(
        speed: map['speed'],
        deg: map['deg'],
        gust: map['gust'],
      );

  double? speed;
  int? deg;
  double? gust;

  Map<String, dynamic> toMap() => {
        'speed': speed,
        'deg': deg,
        'gust': gust,
      };
}

class Main {
  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  factory Main.fromMap(Map<String, dynamic> map) => Main(
        temp: map['temp'],
        feelsLike: map['feels_like'],
        tempMin: map['temp_min'],
        tempMax: map['temp_max'],
        pressure: map['pressure'],
        humidity: map['humidity'],
        seaLevel: map['sea_level'],
        grndLevel: map['grnd_level'],
      );

  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  Map<String, dynamic> toMap() => {
        'temp': temp,
        'feels_like': feelsLike,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'pressure': pressure,
        'humidity': humidity,
        'sea_level': seaLevel,
        'grnd_level': grndLevel,
      };
}

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory Weather.fromMap(Map<String, dynamic> map) => Weather(
        id: map['id'],
        main: map['main'],
        description: map['description'],
        icon: map['icon'],
      );

  int? id;
  String? main;
  String? description;
  String? icon;

  Map<String, dynamic> toMap() => {
        'id': id,
        'main': main,
        'description': description,
        'icon': icon,
      };
}

class Coord {
  Coord({this.lon, this.lat});

  factory Coord.fromMap(Map<String, dynamic> map) => Coord(
        lon: map['lon'],
        lat: map['lat'],
      );

  double? lon;
  double? lat;

  Map<String, dynamic> toMap() => {
        'lon': lon,
        'lat': lat,
      };
}
