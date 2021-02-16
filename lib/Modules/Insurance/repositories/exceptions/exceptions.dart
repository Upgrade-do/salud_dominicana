import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exceptions.freezed.dart';

// freezed union class generated to handle errors in a graceful way

@freezed
abstract class InsuranceFailure with _$InsuranceFailure {
  const factory InsuranceFailure.retrieveFailure({
    @Default('Error retrieving todos') String description,
  }) = RetrieveInsuranceFailure;
  const factory InsuranceFailure.addFailure({
    @Default('Error adding todo') String description,
  }) = AddInsuranceFailure;
  const factory InsuranceFailure.removeFailure({
    @Default('Error removing todo') String description,
  }) = RemoveInsuranceFailure;
}

class InsuranceException implements Exception {
  InsuranceException({required this.failure});

  final InsuranceFailure failure;

  @override
  String toString() {
    return '''
Todo Error: ${failure.toString()}
    ''';
  }
}
