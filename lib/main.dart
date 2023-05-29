import 'package:custom_paint_pokimon_1/screens/pokimon_custom_paint.dart';
import 'package:custom_paint_pokimon_1/screens/polygon_custom_paint.dart';
import 'package:flutter/material.dart';

import 'screens/drawing/drawing_page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const CustomPaintPokimon(),
      // home: const CustomPaintPolygon(),
      home: DrawingPage(),
    );
  }
}
