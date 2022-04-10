import 'package:comics_reader/features/app/app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPref = await SharedPreferences.getInstance();

  final databasesPath = await getDatabasesPath();
  final path = '$databasesPath/comics.db';
  final database = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
         // ignore: lines_longer_than_80_chars

         //TODO: path and type
        'CREATE TABLE LastComicses (id INTEGER PRIMARY KEY, name TEXT, image BLOB, dateTime INTEGER)',
      );
    },
  );

  runApp(
    App(
      sharedPreferences: sharedPref,
      database: database,
    ),
  );
}
