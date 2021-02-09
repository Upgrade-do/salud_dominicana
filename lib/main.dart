import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/all.dart';
import 'Routes/Signed/signed_router.gr.dart';
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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: ExtendedNavigator.builder(
              router: SignedRouter(),
              builder: (context, extendedNav) => Theme(
                   data: ThemeData(brightness: Brightness.dark),
                   child: extendedNav,
    ),
          ),
          title: 'Salud Dominicana',
      //     theme: ThemeData(
      //       primarySwatch: Colors.red,
      //       visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
     // home: HomeAppBar(),
    )
    );
  }
}
