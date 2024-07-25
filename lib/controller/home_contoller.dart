import 'package:weather_app/weather_app.dart';

class HomeController extends StateNotifier<WeatherModel?> {
  HomeController(super.state);

  final WeatherRepository _weatherRepository = WeatherRepository();

  Future getWeather(String city) async {
    WeatherModel response = await _weatherRepository.getWeather(city);
    state = response;
  }
}

final homeControllerProvider =
    StateNotifierProvider<HomeController, WeatherModel?>(
  (ref) {
    return HomeController(null);
  },
);
