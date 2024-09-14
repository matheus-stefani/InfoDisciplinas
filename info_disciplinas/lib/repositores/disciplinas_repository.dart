import 'package:flutter/material.dart';
import 'package:info_disciplinas/database/db.dart';
import 'package:info_disciplinas/model/disciplinas.dart';
import 'package:sqflite/sqflite.dart';

class DisciplinasRepository extends ChangeNotifier {
  late Database db;
  List<InfosDisciplinas> _infosDisciplinas = [];

  DisciplinasRepository() {
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    db = await DB.instance.database;
    await _getDisciplinas();
  }

  Future<void> _getDisciplinas() async {
    List<Map<String, dynamic>> disciplinas = await db.query('DISCIPLINAS');
    _infosDisciplinas = disciplinas.map((map) => InfosDisciplinas.fromMap(map)).toList();
    notifyListeners();
  }

  Future<void> addDisciplinas(InfosDisciplinas disciplinas) async {
    await db.insert("DISCIPLINAS", {
      'NOME': disciplinas.nomeDisciplina,
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
      'TRAB3NOTA': disciplinas.trab3Nota,
    });
    await _getDisciplinas(); // Atualiza a lista após a inserção
  }

  List<InfosDisciplinas> get infosDisciplinas => _infosDisciplinas;
}
