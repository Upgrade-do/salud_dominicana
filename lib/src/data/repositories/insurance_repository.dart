import 'package:salud_dominicana/src/data/model/insurance.dart';

abstract class InsuranceRepository {
  Stream<List<Insurance>> getInsurances();
}
