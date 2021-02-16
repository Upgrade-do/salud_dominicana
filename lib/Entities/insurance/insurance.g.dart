// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Insurance _$_$_InsuranceFromJson(Map<String, dynamic> json) {
  return _$_Insurance(
    (json['insuranceId'] as num).toDouble(),
    json['name'] as String,
  );
}

Map<String, dynamic> _$_$_InsuranceToJson(_$_Insurance instance) =>
    <String, dynamic>{
      'insuranceId': instance.insuranceId,
      'name': instance.name,
    };
