import 'package:flutter_riverpod/all.dart';
import 'package:salud_dominicana/Insurance/data/model/insurance/insurance.dart';
import 'package:salud_dominicana/Insurance/data/state_notifiers/insurance_list_nofifier.dart';

final insuranceListProvider = StateNotifierProvider<InsuranceList>((_) {
  return InsuranceList([
    Insurance(123, 'insurance Provider 3'),
    Insurance(123, 'insurance Provider  10'),
  ]);
});