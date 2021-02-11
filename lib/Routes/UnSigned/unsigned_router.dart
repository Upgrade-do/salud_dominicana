import 'package:auto_route/auto_route_annotations.dart';
import 'package:salud_dominicana/Modules/Login/views/login_page.dart';

@AdaptiveAutoRouter(routes: <AutoRoute> [
  AdaptiveRoute<LoginPage>(page: LoginPage, initial: true),
])
class $UnsignedRouter {}