// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class DrawingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blade Runner"),
      ),
      body: CustomPaint(
        painter: CurvePainter(),
        child: Center(
          child: Text("Blade Runner"),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    // line
    paint.color = Colors.amber;
    paint.strokeWidth = 5;

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );
    // circle
    paint.color = Colors.blue;
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 4, paint);

    // draw Check
    paint.color = Colors.green;
    // paint.style = PaintingStyle.fill; // fill color
    var path = Path();
    path.moveTo(size.width / 3, size.height / 1.5);
    path.lineTo(size.width / 2, size.height / 5);
    path.lineTo(size.width * 3 / 4, size.height * 4 / 6);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
