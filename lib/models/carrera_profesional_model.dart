import 'package:matriculasappg12/models/curso_carrera_model.dart';

class CarreraProfesionalModel {
  String nombre;
  List<CursoEnCarreraModel> cursos;
  int cantSemestres;
  CarreraProfesionalModel({
    required this.nombre,
    required this.cursos,
    required this.cantSemestres,
  });
}
