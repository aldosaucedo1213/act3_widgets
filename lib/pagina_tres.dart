import 'package:flutter/material.dart';

class Pantallatres extends StatelessWidget {
  const Pantallatres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pantalla tres', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.red, // Centra el título
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: ClipOval(
              clipper: CustomClip(),
              child: Container(
                width: 80,
                height: 80,
                color: Color(0xffc81616),
              ),
            ),
          ),
          SizedBox(height: 30),
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

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
