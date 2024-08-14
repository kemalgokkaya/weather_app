import 'package:weather_app/weather_app.dart';

class HomeController extends StateNotifier<WeatherModel?> {
  HomeController(super.state);

  final WeatherRepository _weatherRepository = WeatherRepository();
  final MockRepository _mockRepository = MockRepository();

  Future getWeather(String city) async {
    WeatherModel response = await _weatherRepository.getWeather(city);
    state = response;
  }

  Future<List<String>> getCities({String? city}) async {
    return await _mockRepository.getCities(city: city);
  }
}

final homeControllerProvider =
    StateNotifierProvider<HomeController, WeatherModel?>(
  (ref) {
    return HomeController(null);
  },
);
final  homeControllerLoadingProvider = StateProvider<bool>((ref) => false);
