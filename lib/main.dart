import 'package:flutter/material.dart';
import 'package:perez/pagina_inicia.dart';
import 'package:perez/1.dart';
import 'package:perez/2.dart';
import 'package:perez/3.dart';
import 'package:perez/4.dart';
import 'package:perez/5.dart';
import 'package:perez/6.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla1': (context) => const Pantalla1(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
        '/pantalla4': (context) => const Pantalla4(),
        '/pantalla5': (context) => const Pantalla5(),
        '/pantalla6': (context) => const Pantalla6(),
      },
    );
  }
}
