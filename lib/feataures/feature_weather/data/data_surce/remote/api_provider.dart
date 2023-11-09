import 'package:dio/dio.dart';
import 'package:weather/core/utils/constans.dart';

class ApiProvider {
  final Dio dio = Dio();
  var apiKey = Constants.apiKey;

  /// get current weather api
  Future<dynamic> callCurentWeather(cityName) async {
    var response = await dio.get('${Constants.baseUrl}/data/2.5/weather',
        queryParameters: {'q': cityName, 'appid': apiKey, 'units': "metric"});
    return response;
  }
}
