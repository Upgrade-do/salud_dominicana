import 'dart:async';
import 'package:salud_dominicana/Insurance/data/model/insurance.dart';
import 'insurance_repository.dart';

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

     addState(InsuranceResult(list, 'no'));
     return state;
  }
}

class InsuranceResult {
  final List<Insurance> success;
  final String errorMessage;

  InsuranceResult(this.success, this.errorMessage);
}