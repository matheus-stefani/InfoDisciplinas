import 'package:flutter/material.dart';

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

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}

class MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geral - Datas - Calculo notas - Faltas"),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 700,
            height: 300,
            color: Colors.green,
            child: Align(
              child: Text("Editar - Deletar"),
              alignment: Alignment.topRight,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
    );
  }
}
