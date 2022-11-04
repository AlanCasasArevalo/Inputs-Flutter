import 'package:flutter/material.dart';
import 'package:inputs/app_routes.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  RotatedBox(
                    // Parametro que permite rotar el slider valores de 1-4 (de ahi lo de quarter)
                    quarterTurns: 1,
                    child: Slider(
                      // Hacemos que se muestre un texto arriba cuando arrastramos el slider
                      label: '$_value',
                      // Es el valor (double) que debemos pasarle al Slider
                      value: _value,
                      // Valores minimo que va a aceptar el slider (dividira el valor minimo hasta llegar al maximo)
                      // OJO el valor minimo no puede ser inferior a nuestro _value
                      min: 0,
                      // Valor maximo que alcanzara el slider
                      // OJO el valor mayor no puede ser mayor a nuestro _value
                      max: 4,
                      // Divisiones que tendra el slider
                      divisions: 10,
                      onChanged: (valueChanged) {
                        setState(() {
                          // la funcion floorToDouble lo que hace es redondear el valor siempre para no tener decimales
                          _value = valueChanged.floorToDouble();
                        });
                      },
                    ),
                  ),
                  Text("Hola que hase")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
