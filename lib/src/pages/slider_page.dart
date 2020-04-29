import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

    double _valorSlider = 100.0;
    bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            Expanded(
              child: _crearImagen(),
            ),            
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );

  }

  _crearImagen() {

    return Image(
      image: NetworkImage('https://pluspng.com/img-png/batman-png-png-image-700.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }

  _crearCheckBox() {

    return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;          
        });
      },
    );

  } 
}