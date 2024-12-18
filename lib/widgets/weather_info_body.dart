import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants/get_theme_material_color.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getThemeColor(weatherModel.weatherCondition),
            getThemeColor(weatherModel.weatherCondition)[500]!,
            getThemeColor(weatherModel.weatherCondition)[200]!,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Updated at: ${weatherModel.date.hour}:${weatherModel.date.minute}",
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network("https:${weatherModel.image!}"),
              Text(
                weatherModel.avgTemp.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MaxTemp: ${weatherModel.maxTemp.toInt()}",
                    style: const TextStyle(fontSize: 14),
                  ),
                  Text(
                    "MinTemp: ${weatherModel.minTemp.toInt()}",
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            weatherModel.weatherCondition,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
