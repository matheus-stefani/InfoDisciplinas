import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'info_disciplinas.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(Database db, int version) async {
    await db.execute(_disciplinas);
    
  }

  String _disciplinas = '''
  CREATE TABLE DISCIPLINAS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NOME TEXT,
    P1DATA TEXT,
    P2DATA TEXT,
    SUBDATA TEXT,
    TRAB1DATA TEXT,
    TRAB2DATA TEXT,
    TRAB3DATA TEXT,
    NUMERO_MAX INTEGER,
    NUMERO_ATUAL INTEGER,
    MEDIANOTA REAL,
    P1NOTA REAL,
    P2NOTA REAL,
    SUBNOTA REAL,
    TRAB1NOTA REAL,
    TRAB2NOTA REAL,
    TRAB3NOTA REAL
  );
  ''';
}
