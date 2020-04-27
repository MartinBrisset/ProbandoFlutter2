import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTTDPNmFzkSMZn12BcGNcYcADwyrgLLPNynwvv_JhMup3XmlEwl&usqp=CAU'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('MB'),
              backgroundColor: Colors.yellow,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFF_CZvWR5m3BkSyofiTyUhNk2GN-OtNPNiSVryxqHWeeWlruG&usqp=CAU'),
          placeholder: AssetImage('assets/original.gif'),
          fadeOutDuration: Duration(milliseconds: 200),
        ),
      ),
    );
    
  }
}