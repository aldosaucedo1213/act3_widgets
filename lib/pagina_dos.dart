import 'package:flutter/material.dart';

class Pantallados extends StatelessWidget {
  const Pantallados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pantalla dos', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Color(0xff4d83e7), // Centra el título
      ),
      body: Column(
        children: [
          SizedBox(
            height: 29,
          ),
          Container(
            color: Color(0xffa61212),
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Color(0xff1085ba),
              ),
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('regresar!'),
            ),
          ),
        ],
      ),
    );
  }
}
