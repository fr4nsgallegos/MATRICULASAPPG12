import 'package:flutter/material.dart';
import 'package:matriculasappg12/models/alumno_model.dart';
import 'package:matriculasappg12/models/carrera_profesional_model.dart';
import 'package:matriculasappg12/models/curso_carrera_model.dart';
import 'package:matriculasappg12/models/matricula_model.dart';
import 'package:matriculasappg12/models/universidad_model.dart';
import 'package:matriculasappg12/widgets/matricula_listtile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UniversidadModel> universidadesList = [tecsup, uni2];

  Widget cabeceraUniverisdad(UniversidadModel universidad) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          universidad.nombre,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: () {
            universidad.matriculas.add(
              MatriculaModel(
                date: "07/06/2025",
                hour: "13:05",
                alumno: eliana,
                carrera: derecho,
                cursoEnCarrera: et01,
              ),
            );
            setState(() {});
          },
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () {
            universidadesList.remove(universidad);
            setState(() {});
          },
          icon: Icon(Icons.delete, color: Colors.orange),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            universidadesList.add(
              UniversidadModel(
                nombre: "STANDFORD",
                direccion: "EEUU 123123",
                ruc: "98765465465422",
                telefono: "0165968764",
                carreras: [derecho],
                matriculas: [],
              ),
            );
            setState(() {});
          },
        ),
        appBar: AppBar(title: Text("Matriculas App")),
        body: Center(
          child: Column(
            children: [
              ...universidadesList.map((uni) {
                return Column(
                  children: [
                    cabeceraUniverisdad(uni),
                    ...uni.matriculas.map(
                      (matricula) => MatriculaListtile(matricula, () {
                        uni.matriculas.remove(matricula);
                        setState(() {});
                      }),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
