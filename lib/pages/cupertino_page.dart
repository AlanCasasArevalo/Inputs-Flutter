import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoCalendarPage extends StatefulWidget {
  @override
  State<CupertinoCalendarPage> createState() => _CupertinoCalendarPageState();
}

class _CupertinoCalendarPageState extends State<CupertinoCalendarPage> {
  late DateTime _date;

  @override
  void initState() {
    super.initState();
    _date = DateTime(2021);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _date == null ? null : _onPressed,
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // El widget CupertinoDatePicker necesita un contenedor que defina sus medidas para poder ser renderizado
            SizedBox(
              height: 400,
              // Limitante en este widget no podemos deshabilitar fechas 🤦🏻‍♂️
              child: CupertinoDatePicker(
                onDateTimeChanged: _onDateTimeChanged,
                // Con este paremtro lo que permitimos es cambiar el modo en el que se ve el datepicker
                mode: CupertinoDatePickerMode.date,
                // Con este parametro hacemos que el usuario solo pueda seleccionar hasta la fecha puesta en este parmetro
                maximumDate: DateTime.now().add(
                  Duration(days: 7),
                ),
                // Fecha inicial
                initialDateTime: _date,
                // Fecha minima a la que se permite al usuario seleccionar
                minimumDate: DateTime(2000),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    setState(() {});
  }

  void _onDateTimeChanged(DateTime dateTime) {
    setState(() {
      _date = dateTime;
    });
  }
}
