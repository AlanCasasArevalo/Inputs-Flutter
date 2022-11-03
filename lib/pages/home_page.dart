import 'package:flutter/material.dart';
import 'package:inputs/app_routes.dart';

class HomePage extends StatelessWidget {
  final keys = appRoutes.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final routeName = keys[index];
          return ListTile(
            onTap: (){
              Navigator.pushNamed(context, routeName);
            },
            title: Text(routeName),
          );
        },
        itemCount: keys.length,
      ),
    );
  }

}