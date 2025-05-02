import 'package:flutter/material.dart';

class Pantalla5 extends StatefulWidget {
  const Pantalla5({Key? key}) : super(key: key);

  @override
  _Pantalla5State createState() {
    return _Pantalla5State();
  }
}

class _Pantalla5State extends State<Pantalla5> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Pantallas'),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}",
                  ),
                  ElevatedButton(
                    child: const Text("Choose Date"),
                    onPressed: () async {
                      final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000),
                      );
                      if (dateTime != null) {
                        setState(() {
                          selectedDate = dateTime;
                        });
                      }
                    },
                  ),
                ],
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
