// @dart=2.9
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Localizations/app_localizations.dart';
import 'Routes/Signed/signed_router.gr.dart' as r;
import 'Utils/Storange/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserPreferences.init();

  runApp(App());
}

class App extends StatelessWidget {
  get _builder => ExtendedNavigator.builder(
      router: r.SignedRouter(),
      builder: (context, extendedNav) => Theme(
            data: ThemeData(brightness: Brightness.light),
            child: extendedNav,
          ));

  @override
  Widget build(BuildContext context) {
    final application = MaterialApp(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('es', 'MX'),
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          // Check if the current device locale is supported
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale?.languageCode &&
                supportedLocale.countryCode == locale?.countryCode) {
              return supportedLocale;
            }
          }
          // If the locale of the device is not supported, use the first one
          // from the list (English, in this case).
          return supportedLocales.first;
        },
        debugShowCheckedModeBanner: false,
        title: 'Salud Dominicana',
        builder: _builder);

    return ProviderScope(child: application);
  }
}
