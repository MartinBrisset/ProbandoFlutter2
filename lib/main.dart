import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:probando_componentes/src/pages/alert_page.dart';
import 'package:probando_componentes/src/routes/routes.dart';
// import 'package:probando_componentes/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en','US'),
        const Locale('es', 'ES')
      ],
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