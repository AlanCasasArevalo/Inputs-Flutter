import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}