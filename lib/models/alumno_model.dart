import 'package:matriculasappg12/models/carrera_profesional_model.dart';
import 'package:matriculasappg12/models/persona_model.dart';

class AlumnoModel extends PersonaModel {
  List<CarreraProfesionalModel> carrerasList;
  String codEstudiante;
  double mensualidad;
  AlumnoModel({
    required String dni,
    required String sexo,
    required String nombre,
    required this.carrerasList,
    required this.codEstudiante,
    required this.mensualidad,
  }) : super(dni: dni, sexo: sexo, nombre: nombre);
}
