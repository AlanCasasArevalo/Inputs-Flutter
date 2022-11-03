import 'package:flutter/material.dart';
import '../models/country.dart';
import '../constants/countries.dart';

class TextFieldPage extends StatefulWidget {
  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final List<Country> _countries;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _countries =
        countries.map<Country>((country) => Country.fromJson(country)).toList();
  }

  @override
  Widget build(BuildContext context) {
    late final List<Country> filteredList;

    if (_query.isEmpty) {
      filteredList = _countries;
    } else {
      filteredList = _countries
          .where((country) =>
              country.name.toLowerCase().contains(_query.toLowerCase()))
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: TextField(
          // Se desactiva el textfield
          enabled: true,
          // El parametro decoration nos permite customizar el textfield
          decoration: const InputDecoration(
              // Placeholder para poder darle feedback al usuario de que debe introducir
              hintText: 'Example: China...',
              // Icono en el placeholder
              prefixIcon: Icon(Icons.search),
              // Personalizacion del estilo del texto que tendra el placeholder
              hintStyle: TextStyle(color: Colors.black26),
              // Con este parametro hacemos que salga un texto que cuando pulsas en el textfield se mueva por si mismo hacia arriba
              label: Text('Search....'),
              // Cambiamos el padding del cursor para que se muestre a 8 pixeles del comienzo del textfield
              contentPadding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              // Cambiamos la linea del borde del textfield UnderlineInputBorder es el valor por defecto y es el que hay que modificar para poder solventarlo
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffd81b60),
                ),
              ),
              // Cambiamos la linea del borde del textfield cuando el textfield NO esta con el foco
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black54,
                ),
              ),
              // Cambiamos la linea del borde del textfield cuando el textfield NO esta habilitado
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              )),
          onChanged: (textFieldChanged) {
            _query = textFieldChanged;
            setState(() {});
          },
        ),
      ),
      body: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (context, index) {
          final country = filteredList[index];
          return Container(
            color: Colors.green,
            child: Text(country.name),
          );
        },
        itemCount: filteredList.length,
      ),
    );
  }
}
