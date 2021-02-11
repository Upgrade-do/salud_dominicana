// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../Modules/Login/views/login_page.dart';

class Routes {
  static const String loginPage = '/';
  static const all = <String>{
    loginPage,
  };
}

class UnsignedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginPage, page: LoginPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginPage: (data) {
      return buildAdaptivePageRoute<LoginPage>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
  };
}
