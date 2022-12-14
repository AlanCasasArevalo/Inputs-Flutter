import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String? _better;
  String? _gender;

  void _onBetterChanged(String? valueReceived) {
    setState(() {
      _better = valueReceived;
    });
  }

  void _onGenderChanged(String? valueReceived) {
    setState(() {
      _gender = valueReceived;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Text('Which is better?'),
            // El RadioListTile es similar al Radio, pero permite que sea directamente una celda completa
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              value: 'Flutter',
              title: Text(
                'Flutter',
              ),
              groupValue: _better,
              onChanged: _onBetterChanged,
              // Con este parametro cambiamos el color del radiobutton pero solo cuando esta selecionado
              activeColor: Colors.amber,
              // Este parametro hace que se quede mas pequeño el texto, habria que modificar el estilo en el Text directamente
              dense: true,
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              value: 'React-native',
              title: Text(
                'React-native',
              ),
              groupValue: _better,
              onChanged: _onBetterChanged,
              dense: true,
            ),
            Divider(),
            Text('What is your gender?'),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Male',
              ),
              value: 'Male',
              groupValue: _gender,
              onChanged: _onGenderChanged,
              dense: true,
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Female',
              ),
              value: 'Female',
              groupValue: _gender,
              onChanged: _onGenderChanged,
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
