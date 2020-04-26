import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Cards'),
     ), 
     body: ListView(
       padding: EdgeInsets.all(20.0),
       children: <Widget>[
         _cardTipo1(),
         SizedBox(height: 30.0),
        _cardTipo2()
       ],
     ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy un titulo'),
            subtitle: Text('Ke ondaaaaaaaaaaaa asodjasdjaldaksjd alsdkjsalkd jalksdj alkdjas lkdj asldkasjdlkasj dlaksjd lksajd alskdjasd alskdjas lkdj'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             FlatButton(
               child: Text('Cancelar'),
               onPressed: () {},
             ),
             FlatButton(
               child: Text('Ok'),
               onPressed: () {},
             )
           ], 
          )
        ],
      ),
    );

  }
}

Widget _cardTipo2() {

  return Card(
    child: Column(
      children: <Widget>[
        // FadeInImage(
          
        // ),
        Image(
          image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg')
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('No tengo idea de que poner')
        )
      ],
    ),
  );

}