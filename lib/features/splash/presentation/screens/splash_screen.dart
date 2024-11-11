import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_01/features/splash/presentation/providers/state/start_splash_time.dart';
import 'package:flutter_application_01/features/splash/presentation/widgets/bottom_widget.dart';
import 'package:flutter_application_01/features/splash/presentation/widgets/center_widget.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Splash _splash = Splash();

  @override
  void initState() {
    super.initState();
    _splash.startSplashTime(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [CenterWidget(), BottomWidget()],
          ),
        ));
  }
}