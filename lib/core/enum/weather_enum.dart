import 'package:adv_flutter_weather/utils/weather_type.dart';

enum WeatherEnum {
  sunny(data: "Sunny", widget: WeatherType.sunny),
  partlyCloudy(data: "Partly cloudy", widget: WeatherType.cloudy),
  cloudy(data: "Cloudy", widget: WeatherType.cloudy),
  overcast(data: "Overcast", widget: WeatherType.overcast),
  mist(data: "Mist", widget: WeatherType.hazy),
  patchyRainPossible(
      data: "Patchy rain possible", widget: WeatherType.lightRainy),
  patchySnowPossible(
      data: "Patchy snow possible", widget: WeatherType.lightSnow),
  patchySleetPossible(
      data: "Patchy sleet possible", widget: WeatherType.heavySnow),
  patchyFreezingDrizzlePossible(
      data: "Patchy freezing drizzle possible", widget: WeatherType.heavySnow),
  thunderyOutbreaksPossible(
      data: "Thundery outbreaks possible", widget: WeatherType.heavyRainy),
  blowingSnow(data: "Blowing snow", widget: WeatherType.storm),
  blizzard(data: "Blizzard", widget: WeatherType.storm),
  fog(data: "Fog", widget: WeatherType.foggy),
  freezingFog(data: "Freezing fog", widget: WeatherType.heavySnow),
  patchyLightDrizzle(
      data: "Patchy light drizzle", widget: WeatherType.lightRainy),
  lightDrizzle(data: "Light drizzle", widget: WeatherType.lightRainy),
  freezingDrizzle(data: "Freezing drizzle", widget: WeatherType.lightSnow),
  heavyFreezingDrizzle(
      data: "Heavy freezing drizzle", widget: WeatherType.heavySnow),
  patchyLightRain(data: "Patchy light rain", widget: WeatherType.lightRainy),
  lightRain(data: "Light rain", widget: WeatherType.lightRainy),

  sunnyNight(data: "Clear", widget: WeatherType.sunnyNight),
  patchyRainPossibleNight(
      data: "Patchy rain possible", widget: WeatherType.cloudyNight),
  patchySnowPossibleNight(
      data: "Patchy snow possible", widget: WeatherType.cloudyNight);

  const WeatherEnum({required this.data, required this.widget});

  final String data;
  final WeatherType widget;
}
