import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: CalendarDatePicker(
          // El año en la que se posiciona el calendario (puede o no coincidir con la fecha en la que se comienza el datepicker
          initialDate: DateTime(2000),
          // El año con la que se comienza el calendario OJO SI SELECCIONAS UNA FECHA Y LUEGO CAMBIAS EL CALENDARIO PARA QUE EMPIECE EN UNA FECHA POSTERIOR, TENDRAS QUE HACER UN HOT RELOAD IGUAL EN LA FECHA DE FIN
          firstDate: DateTime(1900),
          // El año con la que se termina el calendario
          lastDate: DateTime.now(),
          // La funcion nos devuelve la fecha cuando seleccionamos una
          onDateChanged: (date) {
            print(date);
          },
        ),
      ),
    );
  }
}
