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
      appBar: AppBar(
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }

}
