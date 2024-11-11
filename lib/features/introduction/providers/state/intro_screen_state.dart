import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_01/routes/app_routes.dart';

class IntroScreenState {
  void routeToHome(BuildContext context) {
    context.router.replace(HomeRoute());
  }
}
