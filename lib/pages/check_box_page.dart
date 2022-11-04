import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _checked = false;

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
                  // Valor que representa el checkbox
                  value: _checked,
                  // Funcion que se ha de pasar con el valor del booleano que llega por callback
                  onChanged: (isChanged) {
                    if (isChanged != null) {
                      setState(() {
                        _checked = isChanged;
                      });
                    }
                    print('🧨 $_checked');
                  },
                ),
                Checkbox(
                  value: _checked,
                  onChanged: (isChanged) {
                    if (isChanged != null) {
                      setState(() {
                        _checked = isChanged;
                      });
                    }
                    print('🧨 $_checked');
                  },
                  // Sobre escribiendo los colores definidos para los checkbox de la app podemos cambiar el color de fondo del checkbox
                  fillColor: MaterialStateProperty.all(Colors.red),
                  // Sobre escribiendo los colores definidos para los checkbox de la app podemos cambiar el color del tick
                  checkColor: Colors.amber,
                ),
                MaterialButton(
                  // Si el valor de _checked es falso devuelve null el boton estar deshabiltado, debido a que al estar a nula la funcion es como si se desactivara el boton
                  onPressed: _checked ? () {} : null,
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
