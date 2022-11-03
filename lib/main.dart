import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inputs/app_routes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final focus = FocusScope.of(context);
        // Se observa el widged hijo que tiene el foco
        final focusedChild = focus.focusedChild;
        // Se comprueba si el widget hijo tiene foco y si es el primero en tenerlo debido a que hay widgets que no pueden quitar el foco
        if (focusedChild != null && !focusedChild.hasPrimaryFocus) {
          focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: appRoutes,
        home: HomePage(),
      ),
    );
  }
}
