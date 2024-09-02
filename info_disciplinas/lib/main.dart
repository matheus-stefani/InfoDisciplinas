import 'package:flutter/material.dart';
import 'package:info_disciplinas/Menu/navbar_items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MaterialColor colorThemes = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: colorThemes,
        appBarTheme: AppBarTheme(
          backgroundColor: colorThemes,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorThemes,
        ),
      ),
      home: Main(),
    );
  }
}



