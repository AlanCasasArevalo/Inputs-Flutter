import 'package:flutter/material.dart';

class KeyboardTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          TextField(
            // Para definir el tipo de teclado que queremos mostrar (TextInputType.emailAddress)
            keyboardType: TextInputType.emailAddress,
            // Para cambiar el aspecto del Textfield
            decoration: InputDecoration(
              // Para poner un titulo al Textfield
              label: Text("Email"),
            ),
            // Te permite saltar al siguiente Textfield de haberlos no funcionan con los teclados NUMERICOS
            textInputAction: TextInputAction.next,
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text("Phone"),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            keyboardType: TextInputType.numberWithOptions(
              // Para pasar decimales
              decimal: true,
              // Para poder anotar simbolos
              signed: true
            ),
            decoration: InputDecoration(
              label: Text("number"),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            // No te corrige las palabras y te elimina las sugerencias en iOS
            autocorrect: false,
            // Te elimina las sugerencias en Android
            enableSuggestions: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              label: Text("Name"),
            ),
            textInputAction: TextInputAction.go,
            onSubmitted: (lastTextChanged) {
              print('El ultimo campo de texto pulsado $lastTextChanged');
            },
          ),
        ],
      ),
    );
  }
}
