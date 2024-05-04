import 'dart:math';
import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  //estado _currentColor representa el color actual del contenedor.
  Color _currentColor = Colors.blue;
//Cuando el usuario toca el contenedor, se llama a la función _changeColor(),
//que genera un nuevo color aleatorio utilizando _generateRandomColor() y actualiza _currentColor.
  Color _generateRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
      1.0, // Alpha (opacidad)
    );
  }

  void _changeColor() {
    setState(() {
      _currentColor = _generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
//Se utiliza un GestureDetector para detectar el toque del usuario en el contenedor y llamar a la función _changeColor().
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        width: 100,
        height: 100,
        color: _currentColor,
        child: Center(
          child: Text(
            'Tap me',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

//En el método main(), se muestra el ColorChangeWidget en la pantalla principal.
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Prueba Intermedia'),
      ),
      body: Center(
        child: ColorChangeWidget(),
      ),
    ),
  ));
}
