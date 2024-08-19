import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
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

  Future getLocation() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Future.error("Konum servisiniz kapali");
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied) {
      return Future.error("Konum izni vermelisiniz");
    }
    Position position = await Geolocator.getCurrentPosition(
        locationSettings:
            const LocationSettings(accuracy: LocationAccuracy.high));
    final List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    final String? city = placemark[0].administrativeArea;
    if (city == null) {
      return Future.error("Bir sorun oluştu");
    }
    await getWeather(city);
  }
}

final homeControllerProvider =
    StateNotifierProvider<HomeController, WeatherModel?>(
  (ref) {
    return HomeController(null);
  },
);
final homeControllerLoadingProvider = StateProvider<bool>((ref) => false);
