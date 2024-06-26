import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';
import 'route_names.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: RouteNames.loginScreen,
        ),
        AutoRoute(
          page: SignupRoute.page,
          path: RouteNames.signupScreen,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: RouteNames.homeScreen,
        ),
      ];
}
