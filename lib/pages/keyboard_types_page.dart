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
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
