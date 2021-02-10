import 'dart:async';

import 'package:salud_dominicana/Modules/Insurance/data/model/insurance/insurance.dart';

abstract class InsuranceRepository {
  Stream<InsuranceResult> getInsurances();
}

class MockInsuranceRepository extends InsuranceRepository {
  final _streamController = StreamController<InsuranceResult>();

  Stream<InsuranceResult> get state => _streamController.stream;

  void addState(InsuranceResult state) => _streamController.sink.add(state);

  void dispose() {
    _streamController.close();
  }

  @override
  Stream<InsuranceResult> getInsurances() {
    var list = <Insurance>[
      Insurance(100, 'name 1'),
      Insurance(102, 'name 2'),
      Insurance(1044, 'name 3'),
      Insurance(100123, 'name 4'),
      Insurance(10033, 'name 5'),
    ];

    addState(InsuranceResult(list, 'no error'));
    return state;
  }
}

class InsuranceResult {
  final List<Insurance> success;
  final String errorMessage;

  InsuranceResult(this.success, this.errorMessage);
}