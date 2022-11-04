import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  '''
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                 dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                  It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
                  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with 
                  desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                ''',
                ),
                Checkbox(
                  // Valor que se debe pasar en caso de que no tengamos un valor predefinido en value
                  tristate: true,
                    // Valor que representa el checkbox
                    value: null,
                    // Funcion que se ha de pasar con el valor del booleano que llega por callback
                    onChanged: (isChanged) {
                      print('🧨');
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
