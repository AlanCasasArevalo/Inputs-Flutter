import 'package:flutter/material.dart';
import '../models/country.dart';
import '../constants/countries.dart';

class TextFieldPage extends StatefulWidget {
  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final _textEditingController = TextEditingController();
  late final List<Country> _countries;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _countries =
        countries.map<Country>((country) => Country.fromJson(country)).toList();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
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
          controller: _textEditingController,
          enabled: true,
          decoration: InputDecoration(
              hintText: 'Search....',
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  _textEditingController.text = '';
                  _query = '';
                  setState(() {});
                },
              ),
              hintStyle: TextStyle(color: Colors.black26),
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none),
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
