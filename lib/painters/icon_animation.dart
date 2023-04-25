import 'package:flutter/material.dart';
import 'dart:math';

class MyIconAnimation extends StatefulWidget {
  const MyIconAnimation({Key? key}) : super(key: key);

  @override
  State<MyIconAnimation> createState() => _MyIconState();
}

class _MyIconState extends State<MyIconAnimation>
    with SingleTickerProviderStateMixin {
  final IntTween _opacityTween = IntTween(begin: 255, end: 0);
  late Animation animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    animation = _opacityTween.animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    animation.addListener(() => setState(() {}));

    animation.addStatusListener((status) {
      setState(() {});
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Animation'),
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(200, 200),
          painter: LocalizationPainter(animation),
        ),
      ),
    );
  }
}

class LocalizationPainter extends CustomPainter {
  final Animation animation;

  LocalizationPainter(this.animation);

  @override
  paint(Canvas canvas, Size size) {
    // Lapiz que que rellena la forma.
    final paintFill = Paint()
      ..color = Colors.blue.withAlpha(animation.value)
      ..style = PaintingStyle.fill;

    // Lapiz que solo delinea.
    final paintStroke = Paint()
      ..strokeWidth = 5.0
      ..color = Colors.blue
      ..style = PaintingStyle.stroke;

    // Hallamos punto C
    final c = _getC(size);
    // Hallamos punto P
    final p = _getP(c, 30);
    // Radio de la circunferencia exterior.
    const smallRadio = 15.0;
    // Radio de la círculo interior.
    const bigRadio = 30.0;

    final path = Path();

    // Hallamos ALFA:
    final alpha = acos(bigRadio / (bigRadio + (p.dy - c.dy)));

    // Dibujamos la circunferencia exterior
    path.addArc(Rect.fromCircle(center: c, radius: bigRadio), pi / 2 + alpha,
        2 * (pi - alpha));

    // Tangente derecha hacia el punto P
    path.lineTo(c.dx, c.dy + bigRadio + (p.dy - c.dy));

    // Tangente izquierda desde el punto P
    path.lineTo(c.dx - bigRadio * sin(alpha), c.dy + bigRadio * cos(alpha));

    // Dibujamos el círculo interior con el lapiz con relleno:
    canvas.drawCircle(c, smallRadio, paintFill);

    // Por último dibujamos nuestro path con el lapiz sin relleno:
    canvas.drawPath(path, paintStroke);
  }

  @override
  bool shouldRepaint(LocalizationPainter _) => true;

  Offset _getC(Size size) {
    return Offset(size.width / 2, size.height / 3);
  }

  Offset _getP(Offset c, double h) {
    return Offset(c.dx, c.dy + h);
  }
}
