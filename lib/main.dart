import 'dart:math';
import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget {
  @override
  _ColorWidgetState createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  Random random = Random();
  Color _currentColor = Colors.yellow;

  // Método para generar un color aleatorio
  Color _randomColor() {
    return Color.fromARGB(
      255,
      random.nextInt(256), // Valor aleatorio para el canal de rojo
      random.nextInt(256), // Valor aleatorio para el canal de verde
      random.nextInt(256), // Valor aleatorio para el canal de azul
    );
  }

  void _changeColor() {
    setState(() {
      _currentColor = _randomColor(); // Cambiamos al color aleatorio generado
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeColor();
      },
      child: Container(
        width: 100,
        height: 100,
        color: _currentColor,
        child: Center(
          child: Text(
            'Toca para cambiar color',
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
        title: Text('Widget Cambio Color'),
      ),
      body: Center(
        child: ColorWidget(),
      ),
    ),
  ));
}