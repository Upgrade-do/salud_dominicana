import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Routes/Signed/signed_router.gr.dart' as r;
import 'Utils/Storange/user_preferences.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigatorWraper = ExtendedNavigator.builder(
        router: r.SignedRouter(),
        builder: (context, extendedNav) => Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: extendedNav,
        ));

    final application = MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Salud Dominicana',
        builder: navigatorWraper
    );

    return ProviderScope(child: application);
  }
}


