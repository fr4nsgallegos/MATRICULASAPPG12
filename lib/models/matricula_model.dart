import 'package:matriculasappg12/models/alumno_model.dart';
import 'package:matriculasappg12/models/carrera_profesional_model.dart';
import 'package:matriculasappg12/models/curso_carrera_model.dart';

class MatriculaModel {
  String date;
  String hour;
  AlumnoModel alumno;
  CarreraProfesionalModel carrera;
  CursoEnCarreraModel cursoEnCarrera;

  MatriculaModel({
    required this.date,
    required this.hour,
    required this.alumno,
    required this.carrera,
    required this.cursoEnCarrera,
  });
}
