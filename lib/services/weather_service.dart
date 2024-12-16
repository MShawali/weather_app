import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '500322e8c9bc44c7bca221521242105';
  WeatherService(this.dio);

  Future<WeatherModel> getForecastWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=10');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      String errorMessage = 'oops there was an error, try later';
      throw Exception(errorMessage);
    }
  }
}
