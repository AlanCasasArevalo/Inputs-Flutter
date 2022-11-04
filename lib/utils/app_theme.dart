import 'package:flutter/material.dart';
import 'package:inputs/utils/material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  final primaryColor = Color(0xffFafafa);
  return ThemeData(
    primaryColor: generateMaterialColorByColor(
      primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        // Cambiamos el ancho de todos los textfields
          borderSide: BorderSide(width: 2)
      ),
    ),
  );
}
