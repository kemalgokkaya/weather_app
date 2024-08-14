import 'dart:convert';

import 'package:flutter/services.dart';

class MockRepository {
  static final MockRepository _instance = MockRepository._internal();

  factory MockRepository() {
    return _instance;
  }

  MockRepository._internal();

  Future<List<String>> getCities({String? city}) async {
    final data = await rootBundle.load("assets/mock/cities.json");
    final cityData = json.decode(
      utf8.decode(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      ),
    ) as List;
    List<String> cities = cityData.map((e) => e.toString()).toList();
    return cities
        .where((e) => e
            .toString()
            .toLowerCase()
            .contains(city.toString().toLowerCase()),)
        .toList();
  }
}
