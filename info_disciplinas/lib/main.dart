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

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DivsGerais(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DivsGerais(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DivsGerais(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DivsGerais(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DivsGerais(),
          ),
        ],
      ),
    );
  }
}

class DivsGerais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 700,
          height: 300,
          color: const Color.fromARGB(255, 226, 226, 226),
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0), 
              child: Row(
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Text("Editar"),
                  SizedBox(width: 8), 
                  Text("Deletar"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Geral"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Datas"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Notas"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Faltas"),
            ),
          ],
        ),
      ),
      body: BodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
    );
  }
}
