import 'package:flutter/material.dart';
import 'pages/keyboard_types_page.dart';
import 'pages/text_field_page.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (context) => TextFieldPage(),
    Routes.keyboard: (context) => KeyboardTypesPage()
  };
}