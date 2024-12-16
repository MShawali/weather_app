import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case "sunny":
      return Colors.yellow; // Sunny
    case "partly cloudy":
      return Colors.blueGrey; // Partly cloudy
    case "cloudy":
      return Colors.grey; // Cloudy
    case "overcast":
    case "blowing snow":
    case "blizzard":
      return Colors.grey; // Overcast
    case "mist":
      return Colors.blue; // Mist
    case "patchy rain possible":
    case "patchy sleet possible":
      return Colors.lightBlue; // Patchy rain possible
    case "patchy snow possible":
      // Patchy snow possibl
      return Colors.teal; // Patchy sleet possible
    case "patchy freezing drizzle possible":
      return Colors.brown; // Patchy freezing drizzle possible
    case "thundery outbreaks possible":
      return Colors.indigo; // Thundery outbreaks possible
    case "fog":
      return Colors.blueGrey; // Fog
    case "freezing fog":
      return Colors.grey; // Freezing fog
    case "patchy light drizzle":
      return Colors.lightGreen; // Patchy light drizzle
    case "light drizzle":
    case "freezing drizzle":
      return Colors.green; // Light drizzle
    // Freezing drizzle
    case "heavy freezing drizzle":
      return Colors.red; // Heavy freezing drizzle
    case "patchy light rain":
      return Colors.lightGreen; // Patchy light rain
    case "light rain":
      return Colors.green; // Light rain
    case "moderate rain at times":
      return Colors.orange; // Moderate rain at times
    case "moderate rain":
      return Colors.deepOrange; // Moderate rain // Heavy rain at times
    case "heavy rain":
    case "heavy rain at times":
      return Colors.red; // Heavy rain
    case "light freezing rain":
      return Colors.blueGrey; // Light freezing rain
    case "moderate or heavy freezing rain":
      return Colors.deepPurple; // Moderate or heavy freezing rain
    case "light sleet":
      return Colors.lightBlue; // Light sleet
    case "moderate or heavy sleet":
      return Colors.blue; // Moderate or heavy sleet
    // Patchy light snow
    case "light snow":
      return Colors.blueGrey; // Light snow
    case "patchy moderate snow":
    case "moderate snow":
      return Colors.blue; // Patchy moderate snow
    // Moderate snow
    case "patchy heavy snow":
      return Colors.blueGrey; // Patchy heavy snow

    // Heavy snow
    case "ice pellets":
    case "patchy light snow":
    case "heavy snow":
      return Colors.grey; // Ice pellets
    case "light rain shower":
      return Colors.lightBlue; // Light rain shower
    case "moderate or heavy rain shower":
      return Colors.blue; // Moderate or heavy rain shower
    case "torrential rain shower":
      return Colors.red; // Torrential rain shower
    case "light sleet showers":
      return Colors.blueGrey; // Light sleet showers
    case "moderate or heavy sleet showers":
      return Colors.lightBlue; // Moderate or heavy sleet showers
    // Light snow showers
    case "moderate or heavy snow showers":
      return Colors.blue; // Moderate or heavy snow showers
    case "light showers of ice pellets":
    case "light snow showers":
      return Colors.grey; // Light showers of ice pellets
    case "moderate or heavy showers of ice pellets":
      return Colors.blue; // Moderate or heavy showers of ice pellets
    case "patchy light rain with thunder":
      return Colors.indigo; // Patchy light rain with thunder
    case "moderate or heavy rain with thunder":
      return Colors.red; // Moderate or heavy rain with thunder
    case "patchy light snow with thunder":
      return Colors.blue; // Patchy light snow with thunder
    case "moderate or heavy snow with thunder":
      return Colors.deepPurple; // Moderate or heavy snow with thunder
    default:
      return Colors.blue; // اللون الافتراضي للحالات غير المعروفة
  }
}

