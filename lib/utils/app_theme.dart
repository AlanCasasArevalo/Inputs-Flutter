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
