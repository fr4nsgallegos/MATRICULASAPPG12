import 'package:flutter/material.dart';
import 'package:matriculasappg12/models/alumno_model.dart';
import 'package:matriculasappg12/models/matricula_model.dart';

class MatriculaListtile extends StatelessWidget {
  MatriculaModel matricula;

  MatriculaListtile(this.matricula);

  @override
  Widget build(BuildContext context) {
    String carrerasSeparadas = matricula.alumno.carrerasList
        .map((carrera) => carrera.nombre)
        .join(" - ");
    return ListTile(
      title: Text(matricula.alumno.nombre),
      subtitle: Text(carrerasSeparadas),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(matricula.alumno.urlImage),
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete, color: Colors.red),
        onPressed: () {},
      ),
      // onTap: () {}, //convierte el trailing en un boton

      // tileColor: Colors.red,
    );
  }
}
