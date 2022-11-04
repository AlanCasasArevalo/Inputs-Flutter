import 'package:flutter/material.dart';
import 'package:inputs/utils/material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  final primaryColor = Color(0xffFafafa);
  return ThemeData(
    primaryColor: generateMaterialColorByColor(
      primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        // Se quita el borde redondeado a las esquinas de los textfields
        borderRadius: BorderRadius.circular(0),
        // Cambiamos el ancho de todos los textfields
        borderSide: BorderSide(
          width: 2,
          // Ponemos el textfield que tiene el foco en color amber
          color: Colors.amber,
        ),
      ),
      enabledBorder: OutlineInputBorder(
          // Se quita el borde redondeado a las esquinas de los textfields
          borderRadius: BorderRadius.circular(0),
          // Cambiamos el ancho de todos los textfields
          borderSide: BorderSide(width: 2)),
    ),
  );
}
