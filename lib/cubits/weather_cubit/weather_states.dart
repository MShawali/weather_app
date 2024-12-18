import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  WeatherModel weatherModel;
  WeatherSuccess(this.weatherModel);
}

class WeatherFailure extends WeatherState {
  final String errorMessage;
  
  WeatherFailure(this.errorMessage);

}
