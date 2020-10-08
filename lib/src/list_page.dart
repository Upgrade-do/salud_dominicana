import 'package:flutter/cupertino.dart';
import 'package:salud_dominicana/src/data/model/Insurance.dart';
import 'package:salud_dominicana/src/data/repositories/insurance_repository.dart';
import 'package:salud_dominicana/src/data/repositories/mock_insurance_repository.dart';

class ListPage extends StatelessWidget {
  final InsuranceRepository _db = MockInsuranceRepository();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Insurance>>(
        stream: _db.getInsurances(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Insurance>> insurances) {
          if (!insurances.hasData) return Text("Loading...");
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
