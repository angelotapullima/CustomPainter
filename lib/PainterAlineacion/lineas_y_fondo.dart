import 'package:flutter/material.dart';

Canvas cuadradoGrande2(Canvas canvas, Size size, Color color) {
  Paint cuadradoGradeAtras = Paint()..style = PaintingStyle.fill;
  cuadradoGradeAtras.color = color.withOpacity(1.0);
  canvas.drawRRect(
      RRect.fromRectAndCorners(Rect.fromLTWH(0, 0, size.width, size.height),
          bottomRight: Radius.circular(size.width * 0.03260870),
          bottomLeft: Radius.circular(size.width * 0.03260870),
          topLeft: Radius.circular(size.width * 0.03260870),
          topRight: Radius.circular(size.width * 0.03260870)),
      cuadradoGradeAtras);

  return canvas;
}

Canvas bordeCuadradoExterno(Canvas canvas, Size size, Color color) {
  Paint bordeCuadraDoPequeno = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  bordeCuadraDoPequeno.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.04891304, size.height * 0.06229773,
          size.width * 0.9021739, size.height * 0.8754045),
      bordeCuadraDoPequeno);

  return canvas;
}

Canvas colorFondo(Canvas canvas, Size size, Color color) {
  Paint colorFondo = Paint()..style = PaintingStyle.fill;
  colorFondo.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.04891304, size.height * 0.06229773,
          size.width * 0.9021739, size.height * 0.8754045),
      colorFondo);

  return canvas;
}

Canvas bordeCirculoCentral(Canvas canvas, Size size, Color color) {
  Paint path = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  path.color = color.withOpacity(1.0);
  canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
      size.width * 0.1250000, path);

  return canvas;
}

Canvas colorFondoCirculoCentral(Canvas canvas, Size size, Color color) {
  Paint path = Paint()..style = PaintingStyle.fill;
  path.color = color.withOpacity(1.0);
  canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
      size.width * 0.1250000, path);

  return canvas;
}

Canvas lineaDelCentro(Canvas canvas, Size size, Color color) {
  Paint path = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  path.color = color.withOpacity(1.0);
  canvas.drawLine(Offset(size.width * 0.04645942, size.height * 0.4991438),
      Offset(size.width - size.width * 0.046, size.height * 0.4991438), path);

  return canvas;
}

Canvas areaGrandeLocal(Canvas canvas, Size size, Color color) {
  Paint path = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.2076087, size.height * 0.06229773,
          size.width * 0.5847826, size.height * 0.1537217),
      path);

  return canvas;
}

Canvas colorAreaGrandeLocal(Canvas canvas, Size size, Color color) {
  Paint path = Paint()..style = PaintingStyle.fill;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.2076087, size.height * 0.06229773,
          size.width * 0.5847826, size.height * 0.1537217),
      path);

  return canvas;
}

Canvas areaGrandeVisita(Canvas canvas, Size size, Color color) {
  Paint path = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.2076087, size.height * 0.7839806,
          size.width * 0.5847826, size.height * 0.1537217),
      path);

  return canvas;
}

Canvas colorAreaGrandeVisita(Canvas canvas, Size size, Color color) {
  Paint path = Paint()..style = PaintingStyle.fill;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.2076087, size.height * 0.7839806,
          size.width * 0.5847826, size.height * 0.1537217),
      path);

  return canvas;
}

Canvas areaChicaLocal(Canvas canvas, Size size, Color color) {
  Paint path = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.3163043, size.height * 0.06229773,
          size.width * 0.3673913, size.height * 0.05663430),
      path);

  return canvas;
}

Canvas areaChicaVisita(Canvas canvas, Size size, Color color) {
  Paint path = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.3163043, size.height * 0.8810680,
          size.width * 0.3673913, size.height * 0.05663430),
      path);

  return canvas;
}

Canvas colorAreaChicaLocal(Canvas canvas, Size size, Color color) {
  Paint path = Paint()..style = PaintingStyle.fill;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.3163043, size.height * 0.06229773,
          size.width * 0.3673913, size.height * 0.05663430),
      path);

  return canvas;
}

Canvas colorAreaChicaVisita(Canvas canvas, Size size, Color color) {
  Paint path = Paint()..style = PaintingStyle.fill;
  path.color = color.withOpacity(1.0);
  canvas.drawRect(
      Rect.fromLTWH(size.width * 0.3163043, size.height * 0.8810680,
          size.width * 0.3673913, size.height * 0.05663430),
      path);

  return canvas;
}

Canvas circuloCentralCentro(Canvas canvas, Size size, Color color) {
  Paint path = Paint()..style = PaintingStyle.fill;
  path.color = color.withOpacity(1.0);
  canvas.drawCircle(Offset(size.width * 0.4988914, size.height * 0.5000000),
      size.width * 0.008869180, path);
  return canvas;
}
