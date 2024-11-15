import 'dart:async';

import 'package:flutter_application_01/shared/data/local/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedService extends StorageService {
  SharedPreferences? sharedPreferences;

  final Completer<SharedPreferences> initCompleter =
      Completer<SharedPreferences>();

  @override
  Future<bool> clear() async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.clear();
  }

  @override
  Future<Object?> get(String key) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.get(key);
  }

  @override
  Future<bool> has(String key) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.containsKey(key);
  }

  @override
  bool get hasInitialized => sharedPreferences != null;

  @override
  void init() {
    initCompleter.complete(SharedPreferences.getInstance());
  }

  @override
  Future<bool> remove(String key) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.remove(key);
  }

  @override
  Future<bool> set(String key, String data) async {
    sharedPreferences = await initCompleter.future;
    return sharedPreferences!.setString(key, data);
  }
  
}