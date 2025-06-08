import 'package:flutter/material.dart';
import 'package:matriculasappg12/models/alumno_model.dart';
import 'package:matriculasappg12/models/carrera_profesional_model.dart';
import 'package:matriculasappg12/models/curso_carrera_model.dart';
import 'package:matriculasappg12/models/matricula_model.dart';
import 'package:matriculasappg12/widgets/matricula_listtile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MatriculaModel> matriculasList = [matri01, matri01];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Matriculas App")),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TECSUP",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      matriculasList.add(
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
                ],
              ),
              ...matriculasList.map((matricula) {
                return MatriculaListtile(matricula);
              }),
              // MatriculaListtile(matri01),
            ],
          ),
        ),
      ),
    );
  }
}
