import 'package:weather_app/weather_app.dart';

class WeatherRepository {
  final BaseRepository _baseRepository;
  static final WeatherRepository _instance = WeatherRepository._internal();

  factory WeatherRepository() {
    return _instance;
  }

  WeatherRepository._internal() : _baseRepository = BaseRepository();

  Future<WeatherModel> getWeather(String city) async {
    Response response = await _baseRepository.executeRequest(
      RequestType.get,
      getWeatherUrl(city),
    );
    return WeatherModel.fromJson(response.data);
  }
}
