import 'package:matriculasappg12/models/carrera_profesional_model.dart';

class UniversidadModel {
  String nombre;
  String direccion;
  String ruc;
  String telefono;
  List<CarreraProfesionalModel> carreras;

  UniversidadModel({
    required this.nombre,
    required this.direccion,
    required this.ruc,
    required this.telefono,
    required this.carreras,
  });
}
