// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class CustomPaintPolygon extends StatelessWidget {
  const CustomPaintPolygon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: CustomPaint(
            child: Text(
              'This is Polygon',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                backgroundColor: Colors.grey,
              ),
            ),
            painter: PolygonPainter(),
          ),
        ),
      ),
    );
  }
}

class PolygonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(150, 50);
    path.lineTo(250, 150);
    path.lineTo(200, 250);
    path.lineTo(100, 250);
    path.lineTo(50, 150);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
