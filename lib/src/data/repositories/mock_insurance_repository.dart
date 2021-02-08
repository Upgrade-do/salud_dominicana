import 'package:salud_dominicana/src/data/model/insurance.dart';
import 'package:salud_dominicana/src/data/repositories/insurance_repository.dart';
import 'dart:async';

class MockInsuranceRepository extends InsuranceRepository  {
  @override
  Stream<List<Insurance>> getInsurances() async* {
    List<Insurance> mockInsurances;

    var elem = Insurance(324254, 'Holaaa');
    mockInsurances.map((event) => elem);

    await Future<Insurance>.delayed(Duration(seconds: 1)).then((_) => mockInsurances);
  }
}

class StreamBasedLogic extends InsuranceRepository {
  final _streamController = StreamController<InsuranceResult>();

  Stream<InsuranceResult> get state => _streamController.stream;

  void addState(InsuranceResult state) => _streamController.sink.add(state);

  void dispose() {
    _streamController.close();
  }

  @override
  Stream<List<Insurance>> getInsurances() {
    // TODO: implement getInsurances
    throw UnimplementedError();
  }
}

class InsuranceResult {
  final List<Insurance> success;
  final String errorMessage;

  InsuranceResult(this.success, this.errorMessage);
}