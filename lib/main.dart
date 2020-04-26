import 'package:flutter/material.dart';
import 'package:probando_componentes/src/pages/alert_page.dart';
import 'package:probando_componentes/src/routes/routes.dart';
// import 'package:probando_componentes/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      initialRoute: '/',
      routes:getApplicationRoutes(),
      onGenerateRoute: (settings) {

        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder:(context) => AlertPage()        
        );
      },
    );
  }
}