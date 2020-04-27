import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

    double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _crearSlider()
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
        print(valor);
      },
    );

  } 
}