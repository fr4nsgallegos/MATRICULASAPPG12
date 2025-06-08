import 'package:matriculasappg12/models/curso_model.dart';

class CursoEnCarreraModel {
  CursoModel curso;
  String codigo;
  int semestre;

  CursoEnCarreraModel({
    required this.curso,
    required this.codigo,
    required this.semestre,
  });
}

CursoEnCarreraModel mat01 = CursoEnCarreraModel(
  curso: matematica,
  codigo: "mat01",
  semestre: 1,
);

CursoEnCarreraModel et01 = CursoEnCarreraModel(
  curso: etica,
  codigo: "et01",
  semestre: 2,
);
