import 'package:flutter/material.dart';

class Pantalla6 extends StatefulWidget {
  const Pantalla6({Key? key}) : super(key: key);

  @override
  State<Pantalla6> createState() => _Pantalla6State();
}

class _Pantalla6State extends State<Pantalla6> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Pantallas'),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.orangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Title',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                ExpandIcon(
                  isExpanded: _isExpanded,
                  color: Colors.white,
                  expandedColor: Colors.black,
                  onPressed: (bool isExpanded) {
                    setState(() {
                      _isExpanded = !isExpanded;
                    });
                  },
                ),
              ],
            ),
          ),
          if (_isExpanded)
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Flutter Mapp'),
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
