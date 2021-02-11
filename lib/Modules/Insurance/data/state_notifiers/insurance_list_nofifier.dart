
import 'package:salud_dominicana/Modules/Insurance/data/model/insurance/insurance.dart';
import 'package:state_notifier/state_notifier.dart';

class InsuranceList extends StateNotifier<List<Insurance>> {
  InsuranceList([List<Insurance> initialState]) : super(initialState ?? []);

  void add(Insurance value) {
    state = [
      ...state,
      value,
    ];
  }

  void remove(Insurance target) {
    state = state.where((insurance) => insurance.insuranceId != target.insuranceId ).toList();
  }

}
