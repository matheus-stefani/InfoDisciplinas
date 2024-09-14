class InfosDisciplinas {
  final String nomeDisciplina;
  final String p1Data;
  final String p2Data;
  final String subData;
  final String trab1Data;
  final String trab2Data;
  final String trab3Data;
  final int numMaxFaltas;
  final int numAtualFaltas;
  final double mediaNotas;
  final double p1Nota;
  final double p2Nota;
  final double subNota;
  final double trab1Nota;
  final double trab2Nota;
  final double trab3Nota;

  InfosDisciplinas({
    required this.nomeDisciplina,
    required this.p1Data,
    required this.p2Data,
    required this.subData,
    required this.trab1Data,
    required this.trab2Data,
    required this.trab3Data,
    required this.numMaxFaltas,
    required this.numAtualFaltas,
    required this.mediaNotas,
    required this.p1Nota,
    required this.p2Nota,
    required this.subNota,
    required this.trab1Nota,
    required this.trab2Nota,
    required this.trab3Nota,
  });

  factory InfosDisciplinas.fromMap(Map<String, dynamic> map) {
    return InfosDisciplinas(
      nomeDisciplina: map['NOME'],
      p1Data: map['P1DATA'],
      p2Data: map['P2DATA'],
      subData: map['SUBDATA'],
      trab1Data: map['TRAB1DATA'],
      trab2Data: map['TRAB2DATA'],
      trab3Data: map['TRAB3DATA'],
      numMaxFaltas: map['NUMERO_MAX'],
      numAtualFaltas: map['NUMERO_ATUAL'],
      mediaNotas: map['MEDIANOTA'],
      p1Nota: map['P1NOTA'],
      p2Nota: map['P2NOTA'],
      subNota: map['SUBNOTA'],
      trab1Nota: map['TRAB1NOTA'],
      trab2Nota: map['TRAB2NOTA'],
      trab3Nota: map['TRAB3NOTA'],
    );
  }
}
