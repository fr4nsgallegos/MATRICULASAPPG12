import 'package:matriculasappg12/models/carrera_profesional_model.dart';
import 'package:matriculasappg12/models/curso_carrera_model.dart';
import 'package:matriculasappg12/models/matricula_model.dart';

class UniversidadModel {
  String nombre;
  String direccion;
  String ruc;
  String telefono;
  List<CarreraProfesionalModel> carreras;
  List<MatriculaModel> matriculas;

  UniversidadModel({
    required this.nombre,
    required this.direccion,
    required this.ruc,
    required this.telefono,
    required this.carreras,
    required this.matriculas,
  });
}

UniversidadModel tecsup = UniversidadModel(
  nombre: "TECSUP",
  direccion: "AV LIMA123",
  ruc: "20121254879",
  telefono: "987654321",
  carreras: [telecomunicaciones, geologia],
  matriculas: [matri01],
);

UniversidadModel uni2 = UniversidadModel(
  nombre: "UNIVERSIDAD 2",
  direccion: "AV EEUU 987",
  ruc: "987654654654",
  telefono: "13245679822",
  carreras: [derecho],
  matriculas: [],
);
