import 'package:salud_dominicana/src/data/model/insurance.dart';
import 'package:salud_dominicana/src/data/repositories/insurance_repository.dart';

class MockInsuranceRepository extends InsuranceRepository {
  @override
  Stream<List<Insurance>> getInsurances() async* {
    List<Insurance> mockInsurances;
    Insurance elem = Insurance(324254, "Holaaa");
    print(elem.toJson());
    mockInsurances.add(elem);

    for (Insurance i in mockInsurances) {
      await Future.delayed(Duration(seconds: 2));
    }
  }
}
