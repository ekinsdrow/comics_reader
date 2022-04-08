import 'package:comics_reader/features/app/app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  final sharedPref = await SharedPreferences.getInstance();
  runApp(
    App(
      sharedPreferences: sharedPref,
    ),
  );
}
