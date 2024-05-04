import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  //estado _currentColor representa el color actual del contenedor.
  Color _currentColor = Colors.blue;
//Cuando el usuario toca el contenedor, se llama a la función _toggleColor(), 
//que cambia _currentColor entre azul y rojo alternativamente
  void _toggleColor() {
    setState(() {
      _currentColor = _currentColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
//GestureDetector para detectar el toque del usuario en el contenedor y llamar a la función _toggleColor()
    return GestureDetector(
      onTap: _toggleColor,
      child: Container(
        width: 200,
        height: 100,
        color: _currentColor,
        child: Center(
          child: Text(
            'Preciona el botón',
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
        title: Text('Prueba Intermedia de Programación Móvil'),
      ),
      body: Center(
        child: ColorChangeWidget(),
      ),
    ),
  ));
}
