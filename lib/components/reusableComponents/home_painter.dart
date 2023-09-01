import 'package:flutter/material.dart';

class HomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xFF);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    final path = Path();
    path.moveTo(0, 0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
