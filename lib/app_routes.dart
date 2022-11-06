import 'package:flutter/material.dart';
import 'package:inputs/pages/check_box_page.dart';
import 'pages/calendar_page.dart';
import 'pages/keyboard_types_page.dart';
import 'pages/radio_button_page.dart';
import 'pages/slider_page.dart';
import 'pages/text_field_page.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (context) => TextFieldPage(),
    Routes.keyboard: (context) => KeyboardTypesPage(),
    Routes.check_box: (context) => CheckBoxPage(),
    Routes.radio_button: (context) => RadioButtonPage(),
    Routes.slider: (context) => SliderPage(),
    Routes.calendar: (context) => CalendarPage(),
  };
}