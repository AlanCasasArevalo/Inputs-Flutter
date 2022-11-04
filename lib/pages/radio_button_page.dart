import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String? _better;
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Text('Which is better?'),
            // Se debe poner el tipo que vamos a manejar debido a que Radio trabaja con tipos genericos,
            Row(
              children: [
                Radio<String>(
                  value: 'Flutter',
                  groupValue: _better,
                  onChanged: (textChanged) {
                    setState(() {
                      _better = textChanged;
                    });
                  },
                ),
                Text(
                  'Flutter',
                ),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  // Debemos poner el valor del radio button
                  value: 'React-native',
                  // El valor del grupo
                  groupValue: _better,
                  // El cambio de valor
                  onChanged: (textChanged) {
                    setState(() {
                      _better = textChanged;
                    });
                  },
                ),
                Text(
                  'React-native',
                ),
              ],
            ),
            Divider(),
            Text('What is your gender?'),
            // Si pasasemos la misma variable a los 4 _groupValue, serian de la misma pregunta
            Row(
              children: [
                Radio<String>(
                  value: 'Male',
                  groupValue: _gender,
                  onChanged: (textChanged) {
                    setState(() {
                      _gender = textChanged;
                    });
                  },
                ),
                Text(
                  'Male',
                ),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  // Debemos poner el valor del radio button
                  value: 'Female',
                  // El valor del grupo
                  groupValue: _gender,
                  // El cambio de valor
                  onChanged: (textChanged) {
                    setState(() {
                      _gender = textChanged;
                    });
                  },
                ),
                Text(
                  'Female',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
