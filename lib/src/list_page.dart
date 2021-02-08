import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salud_dominicana/src/data/model/insurance.dart';
import 'package:salud_dominicana/src/data/repositories/insurance_repository.dart';
import 'package:salud_dominicana/src/data/repositories/mock_insurance_repository.dart';
import 'package:flutter_riverpod/all.dart';

//fake request
class FakeHTTPClient {
  Future<String> get(String url) async {
    await Future<String>.delayed(const Duration(seconds: 1));
    return 'Response from $url';
  }

  Future<List<Insurance>> getInsurance() async {
    await Future<Insurance>.delayed(const Duration(seconds: 1));
    return [Insurance(100, 'Name person')];
  }
}


final fakeHttpClientProvider = Provider((ref) => FakeHTTPClient());

final responseProvider = FutureProvider.autoDispose.family<String, String>( (ref, url) async {
  final http = ref.read(fakeHttpClientProvider);
  return http.get(url);
});

final responseInsuranceProvider = FutureProvider<List<Insurance>>( (ref) async {
  final http = ref.read(fakeHttpClientProvider);
  return http.getInsurance();
});

class ListPage extends StatelessWidget {
  final InsuranceRepository _db = MockInsuranceRepository();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Insurance>>(
        stream: _db.getInsurances().first.asStream(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Insurance>> insurances) {
          if (!insurances.hasData) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Consumer(
                        builder: (context, watch, child) {
                          final responseAsyncValue = watch(responseProvider('dime th'));
                          return responseAsyncValue.map(
                              data:  (_) => Text(_.value),
                              loading: (_) => CircularProgressIndicator(),
                              error: (_) => Text(_.error.toString()));
                        },
                    ),
                ),
              ],
            );
          }
          if (insurances.data.length == 0)
            return Center(
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
          return Column(
            children: <Widget>[
              Flexible(
                child: ListView(
                  children: _buildInsurancesList(insurances.data),
                ),
              ),
            ],
          );
        });
  }

  List<Widget> _buildInsurancesList(List<Insurance> insurances) {
    List<Widget> data = [];
    insurances.forEach((insurance) {
      data.add(_buildExpenseItem(insurance));
    });
    return data;
  }

  Widget _buildExpenseItem(Insurance insurance) {
    return Text(insurance.toString());
  }
}
