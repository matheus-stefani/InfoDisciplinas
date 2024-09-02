import 'package:flutter/material.dart';

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
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                children: [
                 TopDiv(),
                 BodyDiv(),
             ],
              ),
              )
            ),
          ),
        ),
      ),
    );
  }
}

class TopDiv extends StatelessWidget{         


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      color: Colors.amber,
      child: Row(
                  
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    Text("Engenharia de Software ||"),
                    SizedBox(width: 100), 
                    Text("Editar"),
                    SizedBox(width: 15), 
                    Text("Deletar"),
                  ],
                ),
    );
  }

}

class BodyDiv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return  Row(
                children: [
                  ColumnBodyDataDiv(),
                  SizedBox(width: 100), 
                  ColumnBodyNotaDiv(),
                  SizedBox(width: 100), 
                  Container(color: Colors.amber, child: Text("Faltas:\n04/20"))
                ],
              );
  }

}


class ColumnBodyDataDiv extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Text("Data Provas/Trabalhos:"),
          Text("P1: 21/03"),
          Text("P2: 31/03"),
          Text("SUB: 03/04"),
          Text("TRAB 01: 01/03"),
          Text("TRAB 02: 05/04"),
          Text("TRAB 03: 08/05"),
        ],
      ),
    );
  }
}

class ColumnBodyNotaDiv extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Text("Notas:"),
          Text("Media: 5.5"),
          Text("P1: 7.5"),
          Text("P2: 2.0"),
          Text("SUB: 0"),
          Text("TRAB 01: 4"),
          Text("TRAB 02: 8"),
          Text("TRAB 03: 10"),
        ],
      ),
    );
  }
}