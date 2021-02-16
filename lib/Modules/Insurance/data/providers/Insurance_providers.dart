import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salud_dominicana/Entities/insurance/insurance.dart';
import 'package:salud_dominicana/Modules/Insurance/data/state_notifiers/insurance_list_nofifier.dart';

final insuranceListProvider = StateNotifierProvider<InsuranceList>((_) {
  return InsuranceList(initial: [
    Insurance(123, 'insurance Provider 3'),
    Insurance(123, 'insurance Provider  10'),
  ]);
});
