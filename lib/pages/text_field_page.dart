import 'package:flutter/material.dart';
import '../models/country.dart';
import '../constants/countries.dart';

class TextFieldPage extends StatefulWidget {
  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final List<Country> _countries;

  @override
  void initState() {
    super.initState();
    final countriesList = <Country>[];
    for (final country in countries) {
      countriesList.add(Country.fromJson(country));
    }
    _countries = countriesList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        final country = _countries[index];
        return Container(
          color: Colors.green,
          child: Text(country.name),
        );
      }, itemCount: _countries.length,),
    );
  }
}
