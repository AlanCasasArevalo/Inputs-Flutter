import 'package:flutter/material.dart';

class DialogCalendarPage extends StatefulWidget {
  @override
  State<DialogCalendarPage> createState() => _DialogCalendarPageState();
}

class _DialogCalendarPageState extends State<DialogCalendarPage> {
  late DateTime _date;
  late DateTime _initialDate;

  @override
  void initState() {
    super.initState();
    _initialDate = DateTime(1980, 12, 11);
    _date = _initialDate;
    // Con esta recursividad solventamos el conflicto con la pantalla roja si coinciden los dias que no se puede seleccionar con la fecha inicial
    while (!_selectableDayPredicate(_initialDate)) {
      _initialDate = _initialDate.add(Duration(days: 1));
      _date = _initialDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _selectDate,
            icon: Icon(Icons.calendar_month),
          ),
          IconButton(
            onPressed: _selectTime,
            icon: Icon(Icons.watch_later),
          ),
          IconButton(
            onPressed: _save,
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: SafeArea(
        child: CalendarDatePicker(
          // Con esta opcion lo que hacemos es que al seleccionar el calendario salga seleccionados los años en vez del calendario normal
          initialCalendarMode: DatePickerMode.day,
          // El año en la que se posiciona el calendario (puede o no coincidir con la fecha en la que se comienza el datepicker
          initialDate: _date,
          // El año con la que se comienza el calendario OJO SI SELECCIONAS UNA FECHA Y LUEGO CAMBIAS EL CALENDARIO PARA QUE EMPIECE EN UNA FECHA POSTERIOR, TENDRAS QUE HACER UN HOT RELOAD IGUAL EN LA FECHA DE FIN
          firstDate: DateTime(1900),
          // Fecha con la que se termina el calendario
          lastDate: DateTime.now().add(Duration(days: 10)),
          // La funcion nos devuelve la fecha cuando seleccionamos una
          onDateChanged: (date) {
            _date = date;
            print(date);
          },
          // Con esta funcion lo que hacemos es deshabilitar los dias sabados y domingos OJO SI HACEMOS ESTA DESHABILITACION, hay que tener en cuenta el initialDate, no puede empezar en un dia que este deshabilitado
          selectableDayPredicate: _selectableDayPredicate,
          // Fecha actual, o sea el dia en el que se esta
          currentDate: DateTime.now(),
        ),
      ),
    );
  }

  bool _selectableDayPredicate(DateTime dateTime) {
    // No se permiten ni sabados ni domingos
    return dateTime.weekday != 7 && dateTime.weekday != 6;
  }

  void _save() {
    if (_initialDate != _date) {
      print(_date);
    }
    Navigator.pop(context);
  }

  Future<void> _selectDate() async {
    final date = await showDatePicker(
      context: context,
      // El año en la que se posiciona el calendario (puede o no coincidir con la fecha en la que se comienza el datepicker
      initialDate: _date,
      // El año con la que se comienza el calendario OJO SI SELECCIONAS UNA FECHA Y LUEGO CAMBIAS EL CALENDARIO PARA QUE EMPIECE EN UNA FECHA POSTERIOR, TENDRAS QUE HACER UN HOT RELOAD IGUAL EN LA FECHA DE FIN
      firstDate: DateTime(1900),
      // Fecha con la que se termina el calendario
      lastDate: DateTime.now().add(Duration(days: 10)),
    );

    if (date != null) {
      setState(() {
        _date = date;
      });
    }
  }

  Future<void> _selectTime() async {
    // Esta funcion hace que salga un selector de hora en vez de un selector de dia
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (_, child) {
        // Con esto evitamos que el dialogo sea cerrado con el boton atras de android o pulsando fuera del dialog
        return WillPopScope(
          child: child!,
          onWillPop: () async => false,
        );
      }
    );
    if (time != null) {
      setState(() {
        print(time);
      });
    }
  }
}
