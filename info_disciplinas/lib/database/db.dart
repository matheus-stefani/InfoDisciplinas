import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) return _database!;
    
    
    return await _initDatabase();
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), 'info_disciplinas.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) {
       
       db.execute(_datas);
       db.execute(_notas);
       db.execute(_faltas);
       db.execute(_disciplinas);
      }

  String _datas = '''

      CREATE TABLE DATAS(
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        ID_DISCIPLINAS INTEGER,
        P1 TEXT,
        P2 TEXT,
        SUB TEXT,
        TRAB1 TEXT,
        TRAB2 TEXT,
        TRAB3 TEXT,
        FOREIGN KEY (ID_DISCIPLINAS) REFERENCES DISCIPLINAS(ID)
      )

    ''';


  String _notas = '''

      CREATE TABLE NOTAS(
        ID INTEGER PRIMARY KEY AUTOINCREMENT,
        ID_DISCIPLINAS INTEGER,
        MEDIA REAL,
        P1 REAL,
        P2 REAL,
        SUB REAL,
        TRAB1 REAL,
        TRAB2 REAL,
        TRAB3 REAL,
        FOREIGN KEY (ID_DISCIPLINAS) REFERENCES DISCIPLINAS(ID)
      )

    ''';

  String _faltas = '''
  CREATE TABLE FALTAS(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  ID_DISCIPLINAS INTEGER,
  NUMERO_MAX INTEGER,
  NUMERO_ATUAL INTEGER,
  FOREIGN KEY (ID_DISCIPLINAS) REFERENCES DISCIPLINAS(ID)
  );
  ''';

  String _disciplinas = '''
  CREATE TABLE DISCIPLINAS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NOME TEXT,
    ID_NOTAS INTEGER,
    ID_FALTAS INTEGER,
    ID_DATAS INTEGER,
    FOREIGN KEY (ID_NOTAS) REFERENCES NOTAS(ID),
    FOREIGN KEY (ID_FALTAS) REFERENCES FALTAS(ID),
    FOREIGN KEY (ID_DATAS) REFERENCES DATAS(ID)
  );

  ''';

}