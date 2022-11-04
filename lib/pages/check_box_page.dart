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
                // Este widget nos permite poner el text y el checkbox en un solo lugar pudiendo pulstar tanto en el texto como en el checkbox para poder hacer el cambio de la logica
                CheckboxListTile(
                  // Posicionamiento del checkbox respecto al texto
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
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _checked = !_checked;
                    });
                  },
                  child: Row(
                    children: [
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
                      // si el Texto se hace excesivamente largo se puede poner o bien en un Expanded o bien en un Flexible
                      Flexible(
                        child: Text(
                          "I accept Terms policy, I accept Terms policy, I accept Terms policy, I accept Terms policy, ",
                        ),
                      ),
                    ],
                  ),
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
