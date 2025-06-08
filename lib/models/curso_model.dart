class CursoModel {
  String nomCurso;
  double cantCreditos;

  CursoModel({required this.nomCurso, required this.cantCreditos});
}

CursoModel matematica = CursoModel(nomCurso: "Matematica", cantCreditos: 5);
CursoModel etica = CursoModel(nomCurso: "Ética", cantCreditos: 2);
