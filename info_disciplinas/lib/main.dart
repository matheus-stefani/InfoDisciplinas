import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          backgroundColor: Colors.red),
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
