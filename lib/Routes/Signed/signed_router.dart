import 'package:auto_route/auto_route_annotations.dart';
import 'package:salud_dominicana/Modules/Insurance/views/list_page.dart';
import 'package:salud_dominicana/Modules/Login/views/login_page.dart';
import 'package:salud_dominicana/Modules/Login/views/user_page.dart';

@AdaptiveAutoRouter(routes: <AutoRoute> [
  AdaptiveRoute<UserPage>(page: UserPage),
  AdaptiveRoute<ListPage>(page: ListPage,initial: true),
  AdaptiveRoute<LoginPage>(page: LoginPage),
])
class $SignedRouter {}