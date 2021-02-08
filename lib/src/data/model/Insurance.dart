import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'insurance.freezed.dart';
part 'insurance.g.dart';

@freezed
abstract class Insurance with _$Insurance {
  const factory Insurance(double insuranceId, String name) = _Insurance;

  factory Insurance.fromJson(Map<String, dynamic> json) =>
      _$InsuranceFromJson(json);
}
