import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporal'),
      ),
      body: ListView(
        // children: _creatItems()
        children: _crearItemsCorta(),

      ),
    );
  }



  List<Widget> _creatItems() {

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt)
      );

      lista..add(tempWidget)
           ..add(Divider());

    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {

    return opciones.map( ( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Tu hermana'),
            leading: Icon(Icons.favorite_border),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () { },
          ),
          Divider()
        ],
      );

    }).toList();

  }


}