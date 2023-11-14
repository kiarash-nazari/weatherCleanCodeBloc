import 'package:weather/feataures/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather/resources/data_state.dart';

abstract class WeatherRepository {
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String cityName);
}
