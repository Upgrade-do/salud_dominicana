import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Insurance extends Equatable {
  final double insuranceId;
  final String name;

  Insurance({
    @required this.insuranceId,
    @required this.name,
  });

  @override
  List<Object> get props => [insuranceId, name];

  @override
  String toString() {
    return 'Insurance {insuranceId: $insuranceId, name: $name}';
  }

  static Insurance fromJson(Map<String, Object> json) {
    return Insurance(
        insuranceId: json['insuranceId'] as double,
        name: json['name'] as String);
  }

  Map<String, Object> toDocument() {
    return {
      'insuranceId': insuranceId.toString(),
      'name': name,
    };
  }
}
