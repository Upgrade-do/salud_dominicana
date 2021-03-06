import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:salud_dominicana/Entities/insurance/insurance.dart';
import 'package:salud_dominicana/Localizations/app_localizations.dart';
import 'package:salud_dominicana/Modules/CustomWidgets/spacing/spacing_vertical.dart';
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
        useProvider(responseProvider('Error: did not find any records !!'));
    return StreamBuilder<InsuranceResult>(
        stream: _db.getInsurances(),
        builder:
            (BuildContext context, AsyncSnapshot<InsuranceResult> insurances) {
          final onError =
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.all(80.0),
                child: value.map(
                    data: (_) => Text(_.value),
                    loading: (_) => CircularProgressIndicator(),
                    error: (_) => Text(_.error.toString())))
          ]);

          if (insurances.data == null) {
            return HomeAppBar(page: onError);
          }
          ;

          if (!insurances.hasData) {
            return HomeAppBar(page: onError);
          }

          if (insurances.data!.success.isEmpty) {
            return HomeAppBar(page: isEmpty);
          }

          final message =
              AppLocalizations.of(context)?.localized('test_string');

          final insuranceList = Column(
            children: <Widget>[
              SpaceH10(),
              Text('localized test messaga: ${message ?? 'is empty'}'),
              SpaceH10(),
              Flexible(
                child: ListView(
                  children: _buildInsurancesList(insurances.data!.success),
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
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(11),
          margin: EdgeInsets.all(11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff6d04ff),
          ),
          child: Icon(
            Icons.email,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Email Verification',
                style: TextStyle(color: Colors.black87),
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus, enim hic.',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
