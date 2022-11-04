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
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _checked,
                  onChanged: (isChanged) {
                    if (isChanged != null) {
                      setState(() {
                        _checked = isChanged;
                      });
                    }
                    print('🧨 $_checked');
                  },
                  title: Text(
                    "I accept Terms policy, I accept Terms policy",
                  ),
                  // Pading entre el checkbox y el texto
                  contentPadding: EdgeInsets.zero,
                  // Visual entre el checkbox y el texto
                  visualDensity: VisualDensity.compact,
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
                  // Sobre escribiendo el borde podemos cambiar el redondeado del checkbox
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                Divider(),
                // Switch
                SwitchListTile(
                  // Este parametro modifica el color del cirulo del switch cuando esta inactivo
                inactiveThumbColor: Colors.blueAccent,
                  // Este parametro modifica el color del cirulo del switch cuando esta activo
                  activeColor: Colors.blueGrey,
                  // Este parametro modifica el color de la barrita del switch cuando esta activo
                  activeTrackColor: Colors.cyan,
                  // Este parametro modifica el color de la barrita del switch cuando esta inactivo
                  inactiveTrackColor: Colors.deepPurple,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text("Push notifications"),
                  value: _checked,
                  onChanged: (isChanged) {
                    setState(() {
                      _checked = isChanged;
                    });
                    print('🧨 $_checked');
                  },
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
