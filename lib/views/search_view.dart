import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants/get_theme_material_color.dart';
import 'package:weather_app/constants/outline_input_constants.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search city",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onSubmitted: (cityName) async {
                  BlocProvider.of<WeatherCubit>(context)
                      .getWeather(cityName: cityName);
                  Navigator.pop(context);
                },
                cursorColor: Colors.red,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  enabledBorder: inputBorder(),
                  focusedBorder: inputBorder(Colors.red),
                  disabledBorder: inputBorder(),
                  labelText: "Search",
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  hintText: "Enter your city",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
