import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Matriculas App")),
        body: Center(
          child: Column(
            children: [
              ListTile(
                title: Text("Jhonny Gallegos"),
                subtitle: Text("Carrera Profesional"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/11/29/03/35/girl-1867092_1280.jpg",
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
                // onTap: () {}, //convierte el trailing en un boton
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                tileColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
