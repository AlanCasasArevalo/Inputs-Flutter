import 'package:flutter/material.dart';
import 'package:inputs/utils/material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  final primaryColor = Colors.blueAccent;
  return ThemeData(
    primarySwatch: generateMaterialColorByColor(
      primaryColor,
    ),
    // Se cambia el color del schema
    colorScheme: ColorScheme.light(
      primary: primaryColor
    ),
    /*
    Este parametro sirve para cambiar el color de todas las label de los textfields
    Esto puede afectar a todos los widgets que usen dicha configuracion o sea que pueden tener un color
    que no sea el que queremos teniendo que sobreeescribir dicho estilo mas tarde dentro del widget en concreto
     */
    hintColor: Colors.black26,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        // Se quita el borde redondeado a las esquinas de los textfields
        borderRadius: BorderRadius.circular(8),
        // Cambiamos el ancho de todos los textfields
        borderSide: BorderSide(
          width: 2,
          // Ponemos el textfield que tiene el foco en color amber
          color: Colors.amber,
        ),
      ),
      enabledBorder: OutlineInputBorder(
          // Se quita el borde redondeado a las esquinas de los textfields
          borderRadius: BorderRadius.circular(8),
          // Cambiamos el ancho de todos los textfields
          borderSide: BorderSide(width: 2)),
    ),
  );
}
