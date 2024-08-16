import 'package:weather_animation/weather_animation.dart';

enum WeatherEnum {
  sunny(data: "Clear", widget: WeatherScene.sunset),
  cloudy(data: "Clouds", widget: WeatherScene.rainyOvercast);

  const WeatherEnum({required this.data, required this.widget});

  final String data;
  final WeatherScene widget;
}
