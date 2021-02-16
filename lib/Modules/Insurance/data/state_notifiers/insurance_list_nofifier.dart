import 'package:salud_dominicana/Entities/insurance/insurance.dart';
import 'package:state_notifier/state_notifier.dart';

class InsuranceList extends StateNotifier<List<Insurance>> {
  InsuranceList({required List<Insurance> initial}) : super(initial);

  void add(Insurance value) {
    state = [
      ...state,
      value,
    ];
  }

  void remove(Insurance target) {
    state = state
        .where((insurance) => insurance.insuranceId != target.insuranceId)
        .toList();
  }
}
