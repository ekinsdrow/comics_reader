import 'package:flutter/material.dart';

abstract class Themes {
  static get darkTheme => ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30,
          ),
          headline2: TextStyle(
            fontSize: 28,
          ),
          headline3: TextStyle(
            fontSize: 26,
          ),
          headline4: TextStyle(
            fontSize: 24,
          ),
          headline5: TextStyle(
            fontSize: 22,
          ),
          headline6: TextStyle(
            fontSize: 20,
          ),
        ),
      );

  static get lightTheme => ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            color: Colors.grey,
          ),
          headline2: TextStyle(
            fontSize: 28,
            color: Colors.grey,
          ),
          headline3: TextStyle(
            fontSize: 26,
            color: Colors.grey,
          ),
          headline4: TextStyle(
            fontSize: 24,
          ),
          headline5: TextStyle(
            fontSize: 22,
            color: Colors.grey,
          ),
          headline6: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          bodyText1: TextStyle(
            color: Colors.grey,
          ),
          bodyText2: TextStyle(
            color: Colors.grey,
          ),
        ),
      );
}
