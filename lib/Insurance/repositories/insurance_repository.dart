import 'mock_insurance_repository.dart';

abstract class InsuranceRepository {
  Stream<InsuranceResult> getInsurances();
}
