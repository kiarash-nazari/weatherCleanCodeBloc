import 'package:equatable/equatable.dart';
import 'package:weather/feataures/feature_weather/data/model/current_city_model.dart';

class CurrentCityEntity extends Equatable {
  const CurrentCityEntity({
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
  });

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
