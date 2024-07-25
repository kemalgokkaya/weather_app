import 'package:freezed_annotation/freezed_annotation.dart';

part 'clouds.freezed.dart';
part 'clouds.g.dart';

@freezed
class Clouds with _$Clouds {
  factory Clouds({
    int? all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}
