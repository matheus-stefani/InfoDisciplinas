abstract class Datas {
  String? p1Data;
  String? p2Data;
  String? subData;
  String? trab1Data;
  String? trab2Data;
  String? trab3Data;
}

abstract class Nota {
  double? mediaNotas;
  double? p1Nota;
  double? p2Nota;
  double? subNota;
  double? trab1Nota;
  double? trab2Nota;
  double? trab3Nota;
}

abstract class Falta {
  int? numMaxFaltas;
  int? numAtualFaltas;
}

class InfosDisciplinas implements Datas, Nota, Falta {
  
  String? nomeDisciplina;
  
  
  int? numMaxFaltas;
  
  @override
  int? numAtualFaltas;
  
  @override
  double? mediaNotas;
  
  @override
  double? p1Nota;
  
  @override
  double? p2Nota;
  
  @override
  double? subNota;
  
  @override
  double? trab1Nota;
  
  @override
  double? trab2Nota;
  
  @override
  double? trab3Nota;
  
  @override
  String? p1Data;
  
  @override
  String? p2Data;
  
  @override
  String? subData;
  
  @override
  String? trab1Data;
  
  @override
  String? trab2Data;
  
  @override
  String? trab3Data;
}
