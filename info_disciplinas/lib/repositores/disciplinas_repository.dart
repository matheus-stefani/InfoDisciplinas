import 'package:flutter/material.dart';
import 'package:info_disciplinas/database/db.dart';
import 'package:info_disciplinas/model/disciplinas.dart';
import 'package:sqflite/sqflite.dart';

class DisciplinasRepository extends ChangeNotifier {
  late Database db;

  List<InfosDisciplinas> _infosDisciplinas = [];

  DisciplinasRepository(){
    _initDatabase();
  }

  _initDatabase() async{
    _getDisciplinas();
  }

  _getDisciplinas() async{
    db = await DB.instance.database;

    List disciplinas = await db.query('DISCIPLINAS');
    notifyListeners();
    return disciplinas;
  }

  _setDisciplinas (InfosDisciplinas disciplinas) async{
    db = await DB.instance.database;
    db.insert("DISCIPLINAS", {
      'NOME' :disciplinas.nomeDisciplina,
      'P1DATA': disciplinas.p1Data, 
      'P2DATA': disciplinas.p2Data,
      'SUBDATA': disciplinas.subData,
      'TRAB1DATA': disciplinas.trab1Data,
      'TRAB2DATA': disciplinas.trab2Data,
      'TRAB3DATA': disciplinas.trab3Data,
      'NUMERO_MAX': disciplinas.numMaxFaltas,
      'NUMERO_ATUAL': disciplinas.numAtualFaltas,
      'MEDIANOTA': disciplinas.mediaNotas,
      'P1NOTA': disciplinas.p1Nota,
      'P2NOTA': disciplinas.p2Nota,
      'SUBNOTA': disciplinas.subNota,
      'TRAB1NOTA': disciplinas.trab1Nota,
      'TRAB2NOTA': disciplinas.trab2Nota,
      'TRAB3NOTA': disciplinas.trab3Data,
    });
    notifyListeners();
  }

}


