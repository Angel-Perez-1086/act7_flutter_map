import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pantalla4 extends StatefulWidget {
  const Pantalla4({Key? key}) : super(key: key);

  @override
  State<Pantalla4> createState() => _Pantalla4State();
}

class _Pantalla4State extends State<Pantalla4> {
  int _selectedValue = 0;

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
          Expanded(
            child: SafeArea(
              child: Center(
                child: CupertinoButton.filled(
                  child: Text('Value = $_selectedValue'),
                  onPressed: () => showCupertinoModalPopup(
                    context: context,
                    builder: (_) => SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: CupertinoPicker(
                        backgroundColor: Colors.white,
                        itemExtent: 30,
                        scrollController: FixedExtentScrollController(
                          initialItem: 1,
                        ),
                        children: const [
                          Text('0'),
                          Text('1'),
                          Text('2'),
                        ],
                        onSelectedItemChanged: (int value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
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
