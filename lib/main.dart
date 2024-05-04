import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget{
  @override
  _ColorWidget createState() => _ColorWidget();

}

class _ColorWidget extends State<ColorWidget>{
  Color _colorActual = Colors.yellow;
  Color _cambioColor = Colors.blue;

  void cambiarColor(){
    setState((){

      if(_colorActual == Colors.yellow){
        _colorActual = _cambioColor;
      }
      else{
        _colorActual = Colors.yellow;
      }

    });
     
  }

  @override

  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        cambiarColor();
      },
      child: Container(
        width: 100,
        height: 100,
        color: _colorActual,
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
        body: Center(child: ColorWidget(),
      ),
    ),
  ));
}

