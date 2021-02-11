import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:salud_dominicana/Modules/Insurance/data/model/insurance/insurance.dart';
import 'package:salud_dominicana/Modules/Insurance/repositories/insurance_repository.dart';
import 'package:salud_dominicana/Modules/Main/views/main_app_bar.dart';

//fake request
class FakeHTTPClient {
  Future<String> get(String url) async {
    await Future<String>.delayed(const Duration(seconds: 2));
    return 'Response from $url';
  }
}

//MOCK
final fakeHttpClientProvider = Provider((ref) => FakeHTTPClient());
final responseProvider =
    FutureProvider.autoDispose.family<String, String>((ref, url) async {
  final http = ref.read(fakeHttpClientProvider);
  return http.get(url);
});

class ListPage extends HookWidget {
  final InsuranceRepository _db = MockInsuranceRepository();

  @override
  Widget build(BuildContext context) {
    final value =
        useProvider(responseProvider('Error: did not find any records'));

    return StreamBuilder<InsuranceResult>(
        stream: _db.getInsurances(),
        builder:
            (BuildContext context, AsyncSnapshot<InsuranceResult> insurances) {
          if (!insurances.hasData) {
            final onError =
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: value.map(
                      data: (_) => Text(_.value),
                      loading: (_) => CircularProgressIndicator(),
                      error: (_) => Text(_.error.toString())))
            ]);

            return HomeAppBar(page: onError);
          }
          if (insurances.data.success.isEmpty) {
            return HomeAppBar(page: isEmpty);
          }

          final insuranceList = Column(
            children: <Widget>[
              Flexible(
                child: ListView(
                  children: _buildInsurancesList(insurances.data.success),
                ),
              ),
            ],
          );

          return HomeAppBar(page: insuranceList);
        });
  }

  final isEmpty = Center(
    child: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              '(✿◠◡◠)',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'add some insurances.',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    ),
  );

  List<Widget> _buildInsurancesList(List<Insurance> insurances) {
    var data = <Widget>[];
    insurances.forEach((insurance) {
      data.add(_buildExpenseItem(insurance));
    });
    return data;
  }

  Widget _buildExpenseItem(Insurance insurance) {
    return Text(insurance.toString());
  }
}
