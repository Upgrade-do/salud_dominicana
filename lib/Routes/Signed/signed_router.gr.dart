// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../Modules/Insurance/views/insurance_list_page.dart';
import '../../Modules/Login/views/login_page.dart';
import '../../Modules/Profile/views/user_page.dart';

class Routes {
  static const String userPage = '/user-page';
  static const String listPage = '/';
  static const String loginPage = '/login-page';
  static const all = <String>{
    userPage,
    listPage,
    loginPage,
  };
}

class SignedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.userPage, page: UserPage),
    RouteDef(Routes.listPage, page: ListPage),
    RouteDef(Routes.loginPage, page: LoginPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    UserPage: (data) {
      return buildAdaptivePageRoute<UserPage>(
        builder: (context) => UserPage(),
        settings: data,
      );
    },
    ListPage: (data) {
      return buildAdaptivePageRoute<ListPage>(
        builder: (context) => ListPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return buildAdaptivePageRoute<LoginPage>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
  };
}
