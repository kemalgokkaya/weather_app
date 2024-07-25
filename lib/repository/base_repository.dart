import 'package:weather_app/weather_app.dart';

class BaseRepository {
  static final BaseRepository _instance = BaseRepository._internal();

  factory BaseRepository() {
    return _instance;
  }

  BaseRepository._internal();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://open-weather13.p.rapidapi.com/city/",
      headers: {
        "x-rapidapi-host": "open-weather13.p.rapidapi.com",
        "x-rapidapi-key": "75a5fa1246msh626cd2965e7a641p19d8e5jsn62d4e0a61410",
      },
    ),
  );

  Future<Response> executeRequest(RequestType requestType, String path,
      {Object? data}) async {
    try {
      Response? response = await switch (requestType) {
        RequestType.get => _dio.get(path),
        RequestType.post => _dio.post(path, data: data),
        RequestType.put => _dio.put(path, data: data),
        RequestType.patch => _dio.patch(path, data: data),
        RequestType.delete => _dio.delete(path),
      };
      logger.d(response.requestOptions.uri);
      logger.d(response);
      return response;
    } catch (e, st) {
      logger.d(e);
      logger.d(st);
      rethrow;
    }
  }
}
