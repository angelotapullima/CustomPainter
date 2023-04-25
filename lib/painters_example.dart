import 'package:flutter/material.dart';
import 'dart:math' as math;

class PainterExample extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const rect = Rect.fromLTRB(50, 100, 250, 200);
    const startAngle = -math.pi / 2;
    const sweepAngle = math.pi;
    const useCenter = false;
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
