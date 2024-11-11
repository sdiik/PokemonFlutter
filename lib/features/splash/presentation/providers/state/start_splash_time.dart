import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_01/routes/app_routes.dart';

class Splash {
  void startSplashTime(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      context.router.push(const IntroRoute());
    });
  }
}