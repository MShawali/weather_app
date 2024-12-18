import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());

  WeatherModel? weatherModel;
  WeatherService weatherService;
  getWeather({required String cityName}) async {
    emit(WeatherLoading());
    try {
      weatherModel = await weatherService.getForecastWeather(cityName: cityName);
      emit(WeatherSuccess(weatherModel!));
    } on Exception catch (e) {
      emit(WeatherFailure(e.toString()));
    }
  }
}
