// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../Modules/Insurance/views/list_page.dart';

class Routes {
  static const String listPage = '/';
  static const all = <String>{
    listPage,
  };
}

class SignedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.listPage, page: ListPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ListPage: (data) {
      return buildAdaptivePageRoute<ListPage>(
        builder: (context) => ListPage(),
        settings: data,
      );
    },
  };
}
