
import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    paint.color = Colors.blue[200];
    Path circularPathAbove = Path();
    circularPathAbove.lineTo(0, height * 0.10);
    circularPathAbove.quadraticBezierTo(
        width * 0.5, height * 0.22, width, height * 0.10);
    circularPathAbove.lineTo(width, 0);
    circularPathAbove.close();

    canvas.drawPath(circularPathAbove, paint);
    Path circularPathBelow = Path();
    circularPathBelow.moveTo(0, height);
    circularPathBelow.lineTo(0, height * 0.78);
    circularPathBelow.quadraticBezierTo(
        width * 0.5, height * 0.6, width, height * 0.78);
    circularPathBelow.lineTo(width, height);
    circularPathBelow.close();
    canvas.drawPath(circularPathBelow, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
