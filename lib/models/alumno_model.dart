import 'package:matriculasappg12/models/carrera_profesional_model.dart';
import 'package:matriculasappg12/models/persona_model.dart';

class AlumnoModel extends PersonaModel {
  List<CarreraProfesionalModel> carrerasList;
  String codEstudiante;
  double mensualidad;
  String urlImage;
  AlumnoModel({
    required String dni,
    required String sexo,
    required String nombre,
    required this.carrerasList,
    required this.codEstudiante,
    required this.mensualidad,
    required this.urlImage,
  }) : super(dni: dni, sexo: sexo, nombre: nombre);
}

AlumnoModel jhonny = AlumnoModel(
  dni: "98765421",
  sexo: "M",
  nombre: "Jhonny Gallegos",
  carrerasList: [telecomunicaciones],
  codEstudiante: "0001",
  mensualidad: 1235.5,
  urlImage:
      "https://cdn.pixabay.com/photo/2016/06/20/04/30/asian-man-1468032_1280.jpg",
);

AlumnoModel eliana = AlumnoModel(
  dni: "99999999",
  sexo: "F",
  nombre: "Eliana Hans",
  carrerasList: [geologia, derecho],
  codEstudiante: "00002",
  mensualidad: 9843.00,
  urlImage:
      "https://cdn.pixabay.com/photo/2016/11/29/03/35/girl-1867092_1280.jpg",
);
