import 'package:flutter/material.dart';

class TextFieldExamplePage extends StatelessWidget {
  String? nombre;
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXT FIELD")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _nombreController,
                style: TextStyle(
                  color: Colors.red,
                ), //controla el color del texto ingresado por el usuario
                maxLength: 50, //el máximo de caracteres en la respuesta
                decoration: InputDecoration(
                  counterText: "", //ocultar contador de caracteres
                  labelText:
                      "Nombre", //texto de etiqueta que aparece cuando el field no esta seleccionado
                  hintText:
                      "Ingres el nombre completo", //tendo de ayuda dentro del campo
                  prefixIcon: Icon(Icons.person), //Icono a la izquierda
                ),
                // onChanged: (valor) {
                //   nombre = valor;
                //   print(nombre);
                // },
              ),
              TextField(
                controller: _contrasenaController,
                obscureText: true,
                style: TextStyle(
                  color: Colors.red,
                ), //controla el color del texto ingresado por el usuario
                maxLength: 50, //el máximo de caracteres en la respuesta
                decoration: InputDecoration(
                  counterText: "", //ocultar contador de caracteres
                  labelText:
                      "Contraseña", //texto de etiqueta que aparece cuando el field no esta seleccionado
                  hintText:
                      "Ingresa la contraseña", //tendo de ayuda dentro del campo
                  prefixIcon: Icon(Icons.lock), //Icono a la izquierda
                ),
                // onChanged: (valor) {
                //   nombre = valor;
                //   print(nombre);
                // },
              ),
              SizedBox(height: 64),
              ElevatedButton(
                onPressed: () {
                  print("-----------------------");
                  print(_nombreController.text);
                  print("-----------------------");
                },
                child: Text("Impimir el valor"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
