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

CarreraProfesionalModel telecomunicaciones = CarreraProfesionalModel(
  nombre: "Ing. de telecomunicaciones",
  cursos: [mat01, et01],
  cantSemestres: 10,
);

CarreraProfesionalModel geologia = CarreraProfesionalModel(
  nombre: "Ing. Geológica",
  cursos: [mat01],
  cantSemestres: 10,
);
CarreraProfesionalModel derecho = CarreraProfesionalModel(
  nombre: "Derecho",
  cursos: [et01],
  cantSemestres: 10,
);
