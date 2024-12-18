import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants/get_theme_material_color.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/weather_states.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(WeatherService(Dio())),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                color: getThemeColor(
                  BlocProvider.of<WeatherCubit>(context).weatherModel?.weatherCondition,
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/MohamedAtta117/weather_app.git
git push -u origin main