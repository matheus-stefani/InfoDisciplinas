import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // Para verificar kIsWeb
import 'package:info_disciplinas/repositores/disciplinas_repository.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart'; // Para ambientes que suportam sqflite_common_ffi
import 'dart:io'; // Para verificar plataformas como Android e iOS

import 'package:info_disciplinas/database/db.dart';

import 'package:info_disciplinas/model/disciplinas.dart';

void main() {
  // Verifica se estamos rodando em um ambiente desktop ou mobile
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    // Inicializa o sqflite_common_ffi para desktop
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  runApp(
    ChangeNotifierProvider(
      create: (context) => DisciplinasRepository(),
      child: MyApp(),
    ),
  );
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

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com Banco de Dados'),
      ),
      body: Center(
        child: Consumer<DisciplinasRepository>(
          builder: (context, repository, child) {
            if (repository.infosDisciplinas.isEmpty) {
              return Text('Nenhuma disciplina encontrada');
            } else {
              return ListView.builder(
                itemCount: repository.infosDisciplinas.length,
                itemBuilder: (context, index) {
                  final disciplina = repository.infosDisciplinas[index];
                  return ListTile(
                    title: Text(disciplina.nomeDisciplina),
                    subtitle: Text('Nota Média: ${disciplina.mediaNotas}'),
                  );
                },
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final repository = context.read<DisciplinasRepository>();
          await repository.addDisciplinas(
            InfosDisciplinas(
              nomeDisciplina: 'Teste',
              p1Data: '2024-09-10',
              p2Data: '2024-10-10',
              subData: '2024-12-01',
              trab1Data: '2024-09-15',
              trab2Data: '2024-10-20',
              trab3Data: '2024-11-25',
              numMaxFaltas: 20,
              numAtualFaltas: 5,
              mediaNotas: 8.5,
              p1Nota: 8.5,
              p2Nota: 7.5,
              subNota: 8.0,
              trab1Nota: 9.0,
              trab2Nota: 8.0,
              trab3Nota: 7.0,
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
