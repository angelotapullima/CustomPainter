import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
/* CustomPaint(
    size: Size(WIDTH, (WIDTH*0.56875).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter(),
) */

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4067188, size.height * 0.6384066);
    path_0.lineTo(size.width * 0.2210938, size.height * 0.1529659);
    path_0.cubicTo(size.width * 0.08765625, size.height * 0.3109330, 0,
        size.height * 0.5787912, 0, size.height * 0.8826374);
    path_0.lineTo(size.width * 0.3326562, size.height * 0.8826374);
    path_0.cubicTo(
        size.width * 0.3326562,
        size.height * 0.7809890,
        size.width * 0.3620312,
        size.height * 0.6911538,
        size.width * 0.4067188,
        size.height * 0.6384066);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff19A284).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4999344, size.height * 0.5881703);
    path_1.cubicTo(
        size.width * 0.5346219,
        size.height * 0.5881703,
        size.width * 0.5666531,
        size.height * 0.6065769,
        size.width * 0.5932156,
        size.height * 0.6381703);
    path_1.lineTo(size.width * 0.7788375, size.height * 0.1524555);
    path_1.cubicTo(
        size.width * 0.6991500,
        size.height * 0.05822473,
        size.width * 0.6032156,
        size.height * 0.003004808,
        size.width * 0.4999344,
        size.height * 0.003004808);
    path_1.cubicTo(
        size.width * 0.3966531,
        size.height * 0.003004808,
        size.width * 0.3007141,
        size.height * 0.05822473,
        size.width * 0.2210266,
        size.height * 0.1524555);
    path_1.lineTo(size.width * 0.4066531, size.height * 0.6381703);
    path_1.cubicTo(
        size.width * 0.4332156,
        size.height * 0.6068516,
        size.width * 0.4652469,
        size.height * 0.5881703,
        size.width * 0.4999344,
        size.height * 0.5881703);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff6ED8C0).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7789063, size.height * 0.1529659);
    path_2.lineTo(size.width * 0.5932812, size.height * 0.6384066);
    path_2.cubicTo(
        size.width * 0.6379687,
        size.height * 0.6911538,
        size.width * 0.6671875,
        size.height * 0.7809890,
        size.width * 0.6671875,
        size.height * 0.8826374);
    path_2.lineTo(size.width, size.height * 0.8826374);
    path_2.cubicTo(
        size.width,
        size.height * 0.5787912,
        size.width * 0.9123438,
        size.height * 0.3109330,
        size.width * 0.7789063,
        size.height * 0.1529659);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffF97B26).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.09750000, size.height * 0.6387363);
    path_3.lineTo(size.width * 0.4198437, size.height * 0.8771978);
    path_3.cubicTo(
        size.width * 0.4221875,
        size.height * 0.9065934,
        size.width * 0.4295312,
        size.height * 0.9348901,
        size.width * 0.4426563,
        size.height * 0.9574176);
    path_3.cubicTo(
        size.width * 0.4735938,
        size.height * 1.010165,
        size.width * 0.5231250,
        size.height * 1.008791,
        size.width * 0.5531250,
        size.height * 0.9541209);
    path_3.cubicTo(
        size.width * 0.5831250,
        size.height * 0.8997253,
        size.width * 0.5823437,
        size.height * 0.8126374,
        size.width * 0.5512500,
        size.height * 0.7598901);
    path_3.cubicTo(
        size.width * 0.5250000,
        size.height * 0.7151099,
        size.width * 0.4856250,
        size.height * 0.7096154,
        size.width * 0.4559375,
        size.height * 0.7423077);
    path_3.lineTo(size.width * 0.1073438, size.height * 0.5868132);
    path_3.cubicTo(
        size.width * 0.08843750,
        size.height * 0.5782967,
        size.width * 0.07953125,
        size.height * 0.6252747,
        size.width * 0.09750000,
        size.height * 0.6387363);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff043A33).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
