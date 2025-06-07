import 'package:matriculasappg12/models/carrera_profesional_model.dart';
import 'package:matriculasappg12/models/persona_model.dart';

class DocenteModel extends PersonaModel {
  double salario;
  List<CarreraProfesionalModel> carrerasList;
  int horas;

  DocenteModel({
    required String dni,
    required String sexo,
    required String nombre,
    required this.salario,
    required this.carrerasList,
    required this.horas,
  }) : super(dni: dni, sexo: sexo, nombre: nombre);
}
