// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'insurance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Insurance _$InsuranceFromJson(Map<String, dynamic> json) {
  return _Insurance.fromJson(json);
}

/// @nodoc
class _$InsuranceTearOff {
  const _$InsuranceTearOff();

// ignore: unused_element
  _Insurance call(double insuranceId, String name) {
    return _Insurance(
      insuranceId,
      name,
    );
  }

// ignore: unused_element
  Insurance fromJson(Map<String, Object> json) {
    return Insurance.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Insurance = _$InsuranceTearOff();

/// @nodoc
mixin _$Insurance {
  double get insuranceId;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $InsuranceCopyWith<Insurance> get copyWith;
}

/// @nodoc
abstract class $InsuranceCopyWith<$Res> {
  factory $InsuranceCopyWith(Insurance value, $Res Function(Insurance) then) =
      _$InsuranceCopyWithImpl<$Res>;
  $Res call({double insuranceId, String name});
}

/// @nodoc
class _$InsuranceCopyWithImpl<$Res> implements $InsuranceCopyWith<$Res> {
  _$InsuranceCopyWithImpl(this._value, this._then);

  final Insurance _value;
  // ignore: unused_field
  final $Res Function(Insurance) _then;

  @override
  $Res call({
    Object insuranceId = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      insuranceId:
          insuranceId == freezed ? _value.insuranceId : insuranceId as double,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$InsuranceCopyWith<$Res> implements $InsuranceCopyWith<$Res> {
  factory _$InsuranceCopyWith(
          _Insurance value, $Res Function(_Insurance) then) =
      __$InsuranceCopyWithImpl<$Res>;
  @override
  $Res call({double insuranceId, String name});
}

/// @nodoc
class __$InsuranceCopyWithImpl<$Res> extends _$InsuranceCopyWithImpl<$Res>
    implements _$InsuranceCopyWith<$Res> {
  __$InsuranceCopyWithImpl(_Insurance _value, $Res Function(_Insurance) _then)
      : super(_value, (v) => _then(v as _Insurance));

  @override
  _Insurance get _value => super._value as _Insurance;

  @override
  $Res call({
    Object insuranceId = freezed,
    Object name = freezed,
  }) {
    return _then(_Insurance(
      insuranceId == freezed ? _value.insuranceId : insuranceId as double,
      name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Insurance implements _Insurance {
  const _$_Insurance(this.insuranceId, this.name)
      : assert(insuranceId != null),
        assert(name != null);

  factory _$_Insurance.fromJson(Map<String, dynamic> json) =>
      _$_$_InsuranceFromJson(json);

  @override
  final double insuranceId;
  @override
  final String name;

  @override
  String toString() {
    return 'Insurance(insuranceId: $insuranceId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Insurance &&
            (identical(other.insuranceId, insuranceId) ||
                const DeepCollectionEquality()
                    .equals(other.insuranceId, insuranceId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(insuranceId) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$InsuranceCopyWith<_Insurance> get copyWith =>
      __$InsuranceCopyWithImpl<_Insurance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InsuranceToJson(this);
  }
}

abstract class _Insurance implements Insurance {
  const factory _Insurance(double insuranceId, String name) = _$_Insurance;

  factory _Insurance.fromJson(Map<String, dynamic> json) =
      _$_Insurance.fromJson;

  @override
  double get insuranceId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$InsuranceCopyWith<_Insurance> get copyWith;
}
