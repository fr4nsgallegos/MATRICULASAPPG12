import 'package:flutter/material.dart';
import 'package:matriculasappg12/models/matricula_model.dart';
import 'package:matriculasappg12/widgets/matricula_listtile.dart';

class HomePage extends StatelessWidget {
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
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
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
