import 'package:dio/dio.dart';
import 'package:weather/feataures/feature_weather/data/data_surce/remote/api_provider.dart';
import 'package:weather/feataures/feature_weather/data/model/current_city_model.dart';
import 'package:weather/feataures/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather/feataures/feature_weather/domain/repository/weather_repository.dart';
import 'package:weather/resources/data_state.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  ApiProvider apiProvider;
  WeatherRepositoryImpl(this.apiProvider);
  @override
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(
      String cityName) async {
    try {
      Response response = await apiProvider.callCurrentWeather(cityName);

      if (response.statusCode == 200) {
        CurrentCityEntity currentCityEntity =
            CurrentCityModel.fromMap(response.data);
        return DataSuccess(currentCityEntity);
      } else {
        return const DataFaild("some thing went wrong ...");
      }
    } catch (e) {
      return const DataFaild("please cheack connection ...");
    }
  }
}
