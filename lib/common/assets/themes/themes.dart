import 'package:flutter/material.dart';

abstract class Themes {
  static get darkTheme => ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 50,
          ),
          headline2: TextStyle(
            fontSize: 45,
          ),
          headline3: TextStyle(
            fontSize: 40,
          ),
          headline4: TextStyle(
            fontSize: 35,
          ),
          headline5: TextStyle(
            fontSize: 30,
          ),
          headline6: TextStyle(
            fontSize: 25,
          ),
        ),
      );

  static get lightTheme => ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 50,
            color: Colors.grey,
          ),
          headline2: TextStyle(
            fontSize: 45,
            color: Colors.grey,
          ),
          headline3: TextStyle(
            fontSize: 40,
            color: Colors.grey,
          ),
          headline4: TextStyle(
            fontSize: 35,
          ),
          headline5: TextStyle(
            fontSize: 30,
            color: Colors.grey,
          ),
          headline6: TextStyle(
            fontSize: 25,
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
