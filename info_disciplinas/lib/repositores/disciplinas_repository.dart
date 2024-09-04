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
    
    
  }

}


