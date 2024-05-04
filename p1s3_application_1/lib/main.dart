import 'package:flutter/material.dart';

class ColorChangeWidget extends StatefulWidget {
  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  Color _currentColor = Colors.blue;

  void _toggleColor() {
    setState(() {
      _currentColor = _currentColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
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
