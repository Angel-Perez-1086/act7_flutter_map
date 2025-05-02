import 'package:flutter/material.dart';

class Pantalla3 extends StatefulWidget {
  const Pantalla3({Key? key}) : super(key: key);

  @override
  State<Pantalla3> createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Pantallas'),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: CloseButton(
                color: Colors.red,
                onPressed: null, // Cambiado para evitar error en Stateless
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a Pantalla 1
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
