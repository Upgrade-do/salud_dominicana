import 'package:salud_dominicana/src/data/model/Insurance.dart';
import 'package:salud_dominicana/src/data/repositories/insurance_repository.dart';

class MockInsuranceRepository extends InsuranceRepository {

  @override
  Stream<List<Insurance>> getInsurances() async* {
    List<Insurance> mockInsurances;
    mockInsurances.add(Insurance(insuranceId: 324254, name: "Holaaa"));
    mockInsurances.add(Insurance(insuranceId: 534324, name: "manga"));
    mockInsurances.add(Insurance(insuranceId: 42355364, name: "tony"));
    mockInsurances.add(Insurance(insuranceId: 6547, name: "maniga"));
    mockInsurances.add(Insurance(insuranceId: 876, name: "kelo"));
    mockInsurances.add(Insurance(insuranceId: 098, name: "wasabi"));
    mockInsurances.add(Insurance(insuranceId: 3, name: "vi"));

    for (Insurance i in mockInsurances) {
      await Future.delayed(Duration(seconds: 2));
    }
  }
}