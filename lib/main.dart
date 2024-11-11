import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/app.dart';
import 'configs/app_configs.dart';

void main() => mainCommon();

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      child: MyApp(),
    )
  );
}