import 'package:salud_dominicana/src/data/model/Insurance.dart';

abstract class InsuranceRepository {
  Stream<List<Insurance>> getInsurances();
}
