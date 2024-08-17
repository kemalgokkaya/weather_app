// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$Current {
  @JsonKey(name: 'last_updated_epoch')
  int? get lastUpdatedEpoch => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  String? get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double? get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f')
  int? get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  int? get isDay => throw _privateConstructorUsedError;
  Condition? get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  double? get windMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  double? get windKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree')
  int? get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String? get windDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_mb')
  int? get pressureMb => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_in')
  double? get pressureIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_mm')
  int? get precipMm => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_in')
  int? get precipIn => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  int? get cloud => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  double? get feelslikeC => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_f')
  double? get feelslikeF => throw _privateConstructorUsedError;
  @JsonKey(name: 'windchill_c')
  double? get windchillC => throw _privateConstructorUsedError;
  @JsonKey(name: 'windchill_f')
  double? get windchillF => throw _privateConstructorUsedError;
  @JsonKey(name: 'heatindex_c')
  int? get heatindexC => throw _privateConstructorUsedError;
  @JsonKey(name: 'heatindex_f')
  double? get heatindexF => throw _privateConstructorUsedError;
  @JsonKey(name: 'dewpoint_c')
  double? get dewpointC => throw _privateConstructorUsedError;
  @JsonKey(name: 'dewpoint_f')
  double? get dewpointF => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_km')
  int? get visKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_miles')
  int? get visMiles => throw _privateConstructorUsedError;
  int? get uv => throw _privateConstructorUsedError;
  @JsonKey(name: 'gust_mph')
  double? get gustMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'gust_kph')
  double? get gustKph => throw _privateConstructorUsedError;

  /// Serializes this Current to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentCopyWith<Current> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) then) =
      _$CurrentCopyWithImpl<$Res, Current>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int? lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String? lastUpdated,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') int? tempF,
      @JsonKey(name: 'is_day') int? isDay,
      Condition? condition,
      @JsonKey(name: 'wind_mph') double? windMph,
      @JsonKey(name: 'wind_kph') double? windKph,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      @JsonKey(name: 'pressure_mb') int? pressureMb,
      @JsonKey(name: 'pressure_in') double? pressureIn,
      @JsonKey(name: 'precip_mm') int? precipMm,
      @JsonKey(name: 'precip_in') int? precipIn,
      int? humidity,
      int? cloud,
      @JsonKey(name: 'feelslike_c') double? feelslikeC,
      @JsonKey(name: 'feelslike_f') double? feelslikeF,
      @JsonKey(name: 'windchill_c') double? windchillC,
      @JsonKey(name: 'windchill_f') double? windchillF,
      @JsonKey(name: 'heatindex_c') int? heatindexC,
      @JsonKey(name: 'heatindex_f') double? heatindexF,
      @JsonKey(name: 'dewpoint_c') double? dewpointC,
      @JsonKey(name: 'dewpoint_f') double? dewpointF,
      @JsonKey(name: 'vis_km') int? visKm,
      @JsonKey(name: 'vis_miles') int? visMiles,
      int? uv,
      @JsonKey(name: 'gust_mph') double? gustMph,
      @JsonKey(name: 'gust_kph') double? gustKph});

  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res, $Val extends Current>
    implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = freezed,
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isDay = freezed,
    Object? condition = freezed,
    Object? windMph = freezed,
    Object? windKph = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressureMb = freezed,
    Object? pressureIn = freezed,
    Object? precipMm = freezed,
    Object? precipIn = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslikeC = freezed,
    Object? feelslikeF = freezed,
    Object? windchillC = freezed,
    Object? windchillF = freezed,
    Object? heatindexC = freezed,
    Object? heatindexF = freezed,
    Object? dewpointC = freezed,
    Object? dewpointF = freezed,
    Object? visKm = freezed,
    Object? visMiles = freezed,
    Object? uv = freezed,
    Object? gustMph = freezed,
    Object? gustKph = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdatedEpoch: freezed == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double?,
      windKph: freezed == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: freezed == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressureMb: freezed == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as int?,
      pressureIn: freezed == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double?,
      precipMm: freezed == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as int?,
      precipIn: freezed == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeC: freezed == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double?,
      feelslikeF: freezed == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double?,
      windchillC: freezed == windchillC
          ? _value.windchillC
          : windchillC // ignore: cast_nullable_to_non_nullable
              as double?,
      windchillF: freezed == windchillF
          ? _value.windchillF
          : windchillF // ignore: cast_nullable_to_non_nullable
              as double?,
      heatindexC: freezed == heatindexC
          ? _value.heatindexC
          : heatindexC // ignore: cast_nullable_to_non_nullable
              as int?,
      heatindexF: freezed == heatindexF
          ? _value.heatindexF
          : heatindexF // ignore: cast_nullable_to_non_nullable
              as double?,
      dewpointC: freezed == dewpointC
          ? _value.dewpointC
          : dewpointC // ignore: cast_nullable_to_non_nullable
              as double?,
      dewpointF: freezed == dewpointF
          ? _value.dewpointF
          : dewpointF // ignore: cast_nullable_to_non_nullable
              as double?,
      visKm: freezed == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as int?,
      visMiles: freezed == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as int?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as int?,
      gustMph: freezed == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double?,
      gustKph: freezed == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $ConditionCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated_epoch') int? lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') String? lastUpdated,
      @JsonKey(name: 'temp_c') double? tempC,
      @JsonKey(name: 'temp_f') int? tempF,
      @JsonKey(name: 'is_day') int? isDay,
      Condition? condition,
      @JsonKey(name: 'wind_mph') double? windMph,
      @JsonKey(name: 'wind_kph') double? windKph,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      @JsonKey(name: 'pressure_mb') int? pressureMb,
      @JsonKey(name: 'pressure_in') double? pressureIn,
      @JsonKey(name: 'precip_mm') int? precipMm,
      @JsonKey(name: 'precip_in') int? precipIn,
      int? humidity,
      int? cloud,
      @JsonKey(name: 'feelslike_c') double? feelslikeC,
      @JsonKey(name: 'feelslike_f') double? feelslikeF,
      @JsonKey(name: 'windchill_c') double? windchillC,
      @JsonKey(name: 'windchill_f') double? windchillF,
      @JsonKey(name: 'heatindex_c') int? heatindexC,
      @JsonKey(name: 'heatindex_f') double? heatindexF,
      @JsonKey(name: 'dewpoint_c') double? dewpointC,
      @JsonKey(name: 'dewpoint_f') double? dewpointF,
      @JsonKey(name: 'vis_km') int? visKm,
      @JsonKey(name: 'vis_miles') int? visMiles,
      int? uv,
      @JsonKey(name: 'gust_mph') double? gustMph,
      @JsonKey(name: 'gust_kph') double? gustKph});

  @override
  $ConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdatedEpoch = freezed,
    Object? lastUpdated = freezed,
    Object? tempC = freezed,
    Object? tempF = freezed,
    Object? isDay = freezed,
    Object? condition = freezed,
    Object? windMph = freezed,
    Object? windKph = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressureMb = freezed,
    Object? pressureIn = freezed,
    Object? precipMm = freezed,
    Object? precipIn = freezed,
    Object? humidity = freezed,
    Object? cloud = freezed,
    Object? feelslikeC = freezed,
    Object? feelslikeF = freezed,
    Object? windchillC = freezed,
    Object? windchillF = freezed,
    Object? heatindexC = freezed,
    Object? heatindexF = freezed,
    Object? dewpointC = freezed,
    Object? dewpointF = freezed,
    Object? visKm = freezed,
    Object? visMiles = freezed,
    Object? uv = freezed,
    Object? gustMph = freezed,
    Object? gustKph = freezed,
  }) {
    return _then(_$CurrentImpl(
      lastUpdatedEpoch: freezed == lastUpdatedEpoch
          ? _value.lastUpdatedEpoch
          : lastUpdatedEpoch // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as String?,
      tempC: freezed == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double?,
      tempF: freezed == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: freezed == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      windMph: freezed == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double?,
      windKph: freezed == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double?,
      windDegree: freezed == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: freezed == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressureMb: freezed == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as int?,
      pressureIn: freezed == pressureIn
          ? _value.pressureIn
          : pressureIn // ignore: cast_nullable_to_non_nullable
              as double?,
      precipMm: freezed == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as int?,
      precipIn: freezed == precipIn
          ? _value.precipIn
          : precipIn // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloud: freezed == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslikeC: freezed == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double?,
      feelslikeF: freezed == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double?,
      windchillC: freezed == windchillC
          ? _value.windchillC
          : windchillC // ignore: cast_nullable_to_non_nullable
              as double?,
      windchillF: freezed == windchillF
          ? _value.windchillF
          : windchillF // ignore: cast_nullable_to_non_nullable
              as double?,
      heatindexC: freezed == heatindexC
          ? _value.heatindexC
          : heatindexC // ignore: cast_nullable_to_non_nullable
              as int?,
      heatindexF: freezed == heatindexF
          ? _value.heatindexF
          : heatindexF // ignore: cast_nullable_to_non_nullable
              as double?,
      dewpointC: freezed == dewpointC
          ? _value.dewpointC
          : dewpointC // ignore: cast_nullable_to_non_nullable
              as double?,
      dewpointF: freezed == dewpointF
          ? _value.dewpointF
          : dewpointF // ignore: cast_nullable_to_non_nullable
              as double?,
      visKm: freezed == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as int?,
      visMiles: freezed == visMiles
          ? _value.visMiles
          : visMiles // ignore: cast_nullable_to_non_nullable
              as int?,
      uv: freezed == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as int?,
      gustMph: freezed == gustMph
          ? _value.gustMph
          : gustMph // ignore: cast_nullable_to_non_nullable
              as double?,
      gustKph: freezed == gustKph
          ? _value.gustKph
          : gustKph // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  _$CurrentImpl(
      {@JsonKey(name: 'last_updated_epoch') this.lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') this.lastUpdated,
      @JsonKey(name: 'temp_c') this.tempC,
      @JsonKey(name: 'temp_f') this.tempF,
      @JsonKey(name: 'is_day') this.isDay,
      this.condition,
      @JsonKey(name: 'wind_mph') this.windMph,
      @JsonKey(name: 'wind_kph') this.windKph,
      @JsonKey(name: 'wind_degree') this.windDegree,
      @JsonKey(name: 'wind_dir') this.windDir,
      @JsonKey(name: 'pressure_mb') this.pressureMb,
      @JsonKey(name: 'pressure_in') this.pressureIn,
      @JsonKey(name: 'precip_mm') this.precipMm,
      @JsonKey(name: 'precip_in') this.precipIn,
      this.humidity,
      this.cloud,
      @JsonKey(name: 'feelslike_c') this.feelslikeC,
      @JsonKey(name: 'feelslike_f') this.feelslikeF,
      @JsonKey(name: 'windchill_c') this.windchillC,
      @JsonKey(name: 'windchill_f') this.windchillF,
      @JsonKey(name: 'heatindex_c') this.heatindexC,
      @JsonKey(name: 'heatindex_f') this.heatindexF,
      @JsonKey(name: 'dewpoint_c') this.dewpointC,
      @JsonKey(name: 'dewpoint_f') this.dewpointF,
      @JsonKey(name: 'vis_km') this.visKm,
      @JsonKey(name: 'vis_miles') this.visMiles,
      this.uv,
      @JsonKey(name: 'gust_mph') this.gustMph,
      @JsonKey(name: 'gust_kph') this.gustKph});

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  @JsonKey(name: 'last_updated_epoch')
  final int? lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  final String? lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  final double? tempC;
  @override
  @JsonKey(name: 'temp_f')
  final int? tempF;
  @override
  @JsonKey(name: 'is_day')
  final int? isDay;
  @override
  final Condition? condition;
  @override
  @JsonKey(name: 'wind_mph')
  final double? windMph;
  @override
  @JsonKey(name: 'wind_kph')
  final double? windKph;
  @override
  @JsonKey(name: 'wind_degree')
  final int? windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String? windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  final int? pressureMb;
  @override
  @JsonKey(name: 'pressure_in')
  final double? pressureIn;
  @override
  @JsonKey(name: 'precip_mm')
  final int? precipMm;
  @override
  @JsonKey(name: 'precip_in')
  final int? precipIn;
  @override
  final int? humidity;
  @override
  final int? cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  final double? feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f')
  final double? feelslikeF;
  @override
  @JsonKey(name: 'windchill_c')
  final double? windchillC;
  @override
  @JsonKey(name: 'windchill_f')
  final double? windchillF;
  @override
  @JsonKey(name: 'heatindex_c')
  final int? heatindexC;
  @override
  @JsonKey(name: 'heatindex_f')
  final double? heatindexF;
  @override
  @JsonKey(name: 'dewpoint_c')
  final double? dewpointC;
  @override
  @JsonKey(name: 'dewpoint_f')
  final double? dewpointF;
  @override
  @JsonKey(name: 'vis_km')
  final int? visKm;
  @override
  @JsonKey(name: 'vis_miles')
  final int? visMiles;
  @override
  final int? uv;
  @override
  @JsonKey(name: 'gust_mph')
  final double? gustMph;
  @override
  @JsonKey(name: 'gust_kph')
  final double? gustKph;

  @override
  String toString() {
    return 'Current(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windchillC: $windchillC, windchillF: $windchillF, heatindexC: $heatindexC, heatindexF: $heatindexF, dewpointC: $dewpointC, dewpointF: $dewpointF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.lastUpdatedEpoch, lastUpdatedEpoch) ||
                other.lastUpdatedEpoch == lastUpdatedEpoch) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.pressureIn, pressureIn) ||
                other.pressureIn == pressureIn) &&
            (identical(other.precipMm, precipMm) ||
                other.precipMm == precipMm) &&
            (identical(other.precipIn, precipIn) ||
                other.precipIn == precipIn) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.feelslikeC, feelslikeC) ||
                other.feelslikeC == feelslikeC) &&
            (identical(other.feelslikeF, feelslikeF) ||
                other.feelslikeF == feelslikeF) &&
            (identical(other.windchillC, windchillC) ||
                other.windchillC == windchillC) &&
            (identical(other.windchillF, windchillF) ||
                other.windchillF == windchillF) &&
            (identical(other.heatindexC, heatindexC) ||
                other.heatindexC == heatindexC) &&
            (identical(other.heatindexF, heatindexF) ||
                other.heatindexF == heatindexF) &&
            (identical(other.dewpointC, dewpointC) ||
                other.dewpointC == dewpointC) &&
            (identical(other.dewpointF, dewpointF) ||
                other.dewpointF == dewpointF) &&
            (identical(other.visKm, visKm) || other.visKm == visKm) &&
            (identical(other.visMiles, visMiles) ||
                other.visMiles == visMiles) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.gustMph, gustMph) || other.gustMph == gustMph) &&
            (identical(other.gustKph, gustKph) || other.gustKph == gustKph));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lastUpdatedEpoch,
        lastUpdated,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        windchillC,
        windchillF,
        heatindexC,
        heatindexF,
        dewpointC,
        dewpointF,
        visKm,
        visMiles,
        uv,
        gustMph,
        gustKph
      ]);

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements Current {
  factory _Current(
      {@JsonKey(name: 'last_updated_epoch') final int? lastUpdatedEpoch,
      @JsonKey(name: 'last_updated') final String? lastUpdated,
      @JsonKey(name: 'temp_c') final double? tempC,
      @JsonKey(name: 'temp_f') final int? tempF,
      @JsonKey(name: 'is_day') final int? isDay,
      final Condition? condition,
      @JsonKey(name: 'wind_mph') final double? windMph,
      @JsonKey(name: 'wind_kph') final double? windKph,
      @JsonKey(name: 'wind_degree') final int? windDegree,
      @JsonKey(name: 'wind_dir') final String? windDir,
      @JsonKey(name: 'pressure_mb') final int? pressureMb,
      @JsonKey(name: 'pressure_in') final double? pressureIn,
      @JsonKey(name: 'precip_mm') final int? precipMm,
      @JsonKey(name: 'precip_in') final int? precipIn,
      final int? humidity,
      final int? cloud,
      @JsonKey(name: 'feelslike_c') final double? feelslikeC,
      @JsonKey(name: 'feelslike_f') final double? feelslikeF,
      @JsonKey(name: 'windchill_c') final double? windchillC,
      @JsonKey(name: 'windchill_f') final double? windchillF,
      @JsonKey(name: 'heatindex_c') final int? heatindexC,
      @JsonKey(name: 'heatindex_f') final double? heatindexF,
      @JsonKey(name: 'dewpoint_c') final double? dewpointC,
      @JsonKey(name: 'dewpoint_f') final double? dewpointF,
      @JsonKey(name: 'vis_km') final int? visKm,
      @JsonKey(name: 'vis_miles') final int? visMiles,
      final int? uv,
      @JsonKey(name: 'gust_mph') final double? gustMph,
      @JsonKey(name: 'gust_kph') final double? gustKph}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  @JsonKey(name: 'last_updated_epoch')
  int? get lastUpdatedEpoch;
  @override
  @JsonKey(name: 'last_updated')
  String? get lastUpdated;
  @override
  @JsonKey(name: 'temp_c')
  double? get tempC;
  @override
  @JsonKey(name: 'temp_f')
  int? get tempF;
  @override
  @JsonKey(name: 'is_day')
  int? get isDay;
  @override
  Condition? get condition;
  @override
  @JsonKey(name: 'wind_mph')
  double? get windMph;
  @override
  @JsonKey(name: 'wind_kph')
  double? get windKph;
  @override
  @JsonKey(name: 'wind_degree')
  int? get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String? get windDir;
  @override
  @JsonKey(name: 'pressure_mb')
  int? get pressureMb;
  @override
  @JsonKey(name: 'pressure_in')
  double? get pressureIn;
  @override
  @JsonKey(name: 'precip_mm')
  int? get precipMm;
  @override
  @JsonKey(name: 'precip_in')
  int? get precipIn;
  @override
  int? get humidity;
  @override
  int? get cloud;
  @override
  @JsonKey(name: 'feelslike_c')
  double? get feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f')
  double? get feelslikeF;
  @override
  @JsonKey(name: 'windchill_c')
  double? get windchillC;
  @override
  @JsonKey(name: 'windchill_f')
  double? get windchillF;
  @override
  @JsonKey(name: 'heatindex_c')
  int? get heatindexC;
  @override
  @JsonKey(name: 'heatindex_f')
  double? get heatindexF;
  @override
  @JsonKey(name: 'dewpoint_c')
  double? get dewpointC;
  @override
  @JsonKey(name: 'dewpoint_f')
  double? get dewpointF;
  @override
  @JsonKey(name: 'vis_km')
  int? get visKm;
  @override
  @JsonKey(name: 'vis_miles')
  int? get visMiles;
  @override
  int? get uv;
  @override
  @JsonKey(name: 'gust_mph')
  double? get gustMph;
  @override
  @JsonKey(name: 'gust_kph')
  double? get gustKph;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
