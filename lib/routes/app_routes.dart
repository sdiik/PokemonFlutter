import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_01/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_application_01/features/introduction/screens/intro_screen.dart';
import 'package:flutter_application_01/features/splash/presentation/screens/splash_screen.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRoutes extends RootStackRouter {

  @override
  RouteType get defaultRouteType =>
      const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: IntroRoute.page)
  ];
}