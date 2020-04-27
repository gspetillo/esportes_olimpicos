import 'package:esportes_olimpicos/screens/esportes_infos_screen.dart';
import 'package:esportes_olimpicos/screens/esportes_screen.dart';
import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modelidades Olímpicas',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => EsportesScreen(),
        '/esportes_infos': (context) => EsportesInfosScreen(),
      },
    );
  }
}

