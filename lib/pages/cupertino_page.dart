import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoCalendarPage extends StatefulWidget {
  @override
  State<CupertinoCalendarPage> createState() => _CupertinoCalendarPageState();
}

class _CupertinoCalendarPageState extends State<CupertinoCalendarPage> {
  late DateTime _date;
  late DateTime _initialDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            // El widget CupertinoDatePicker necesita un contenedor que defina sus medidas para poder ser renderizado
            SizedBox(
              height: 400,
              child: CupertinoDatePicker(
                onDateTimeChanged: _onDateTimeChanged,
                // Con este paremtro lo que permitimos es cambiar el modo en el que se ve el datepicker
                mode: CupertinoDatePickerMode.date,
                // Con este parametro hacemos que el usuario solo pueda seleccionar hasta la fecha puesta en este parmetro
                maximumDate: DateTime.now().add(
                  Duration(days: 7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onDateTimeChanged(DateTime dateTime) {}
}
