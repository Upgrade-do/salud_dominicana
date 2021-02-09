import 'package:auto_route/auto_route_annotations.dart';
import 'package:salud_dominicana/Modules/Insurance/views/list_page.dart';

@AdaptiveAutoRouter(routes: <AutoRoute> [
  AdaptiveRoute<ListPage>(page: ListPage, initial: true),
])
class $SignedRouter {}