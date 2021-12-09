import 'package:auto_route/auto_route.dart';
import 'package:bloc_teaching/home/page/page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: HomeDetailsPage),
  ],
)
class $AppRouter {}
