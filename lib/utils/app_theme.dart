import 'package:flutter/material.dart';
import 'package:inputs/utils/material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  final primaryColor = Colors.blueAccent;
  return ThemeData(
    primarySwatch: generateMaterialColorByColor(
      primaryColor,
    ),
    // Se cambia el color del schema
    colorScheme: ColorScheme.light(primary: primaryColor),
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
    // Para poder customizar los Checkbox de toda la aplicacion
    checkboxTheme: CheckboxThemeData(
      // El background del checkbox
      fillColor: MaterialStateProperty.all(Colors.greenAccent),
      // El tick del checkbox
      checkColor: MaterialStateProperty.all(Colors.red),
      // Para poder redondear el checkbox
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      // Cuando pulsas un momento en el checkbox y mantienes pulsado hasta que sueltas customizamos el color
      overlayColor: MaterialStateProperty.all(
        Colors.pink.withOpacity(.4),
      ),
    ),
    radioTheme: RadioThemeData(
      // Con este parametro cambiamos el color de los radioButtons de la app
      fillColor: MaterialStateProperty.all(Colors.red),
      // Con este parametro cuadramos los radiobuttons de la app
      visualDensity: VisualDensity.compact,
    ),
    switchTheme: SwitchThemeData(
      overlayColor: MaterialStateProperty.all(Colors.amber),
      // Este parametro modifica el color del cirulo del switch
      thumbColor: MaterialStateProperty.all(Colors.red),
      // Este parametro modifica el color de la barrita del switch
      trackColor: MaterialStateProperty.all(Colors.yellow),
      splashRadius: 40,
      materialTapTargetSize: MaterialTapTargetSize.padded,
    ),
    sliderTheme: SliderThemeData(
      // Cambia la barra del slider
      activeTrackColor: Colors.pink,
      // Cambia la boton del slider
      thumbColor: Colors.pinkAccent,
      // Cambia la sombra que hay cuando mantienes el slider pulsado
      overlayColor: Colors.cyan.withOpacity(.2),
      // Cambia el color de la etiqueta que muestra el valor del slider
      valueIndicatorColor: Colors.deepPurple.withOpacity(0.4),
      // Cambia la barra del slider cuando esta inactiva
      inactiveTrackColor: Colors.pink.withOpacity(.1),
      // Cambia el tamaño de barra del slider
      trackHeight: 15,
      inactiveTickMarkColor: Colors.white54,
      // Cambia la boton del slider cambiando el tamaño
      thumbShape: RoundSliderThumbShape(
        enabledThumbRadius: 15
      ),
    ),
  );
}
