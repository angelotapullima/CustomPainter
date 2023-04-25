import 'package:custom_paint_example/PainterAlineacion/players.dart';
import 'package:flutter/material.dart';

import '../models/coach.dart';
import '../models/match.dart';
import '../utils.dart';
import 'lineas_y_fondo.dart';

class PainterAlineacion extends CustomPainter {
  MatchGame? data;
  List<StartXI>? localList;
  List<StartXI>? visitList;
  final BuildContext? context;

  PainterAlineacion({
    this.context,
    this.data,
    this.localList,
    this.visitList,
  });
  @override
  void paint(Canvas canvas, Size size) {
    cuadradoGrande2(canvas, size, const Color(0xFFF7F7F7));
    bordeCuadradoExterno(canvas, size, Colors.black);
    colorFondo(canvas, size, const Color(0xFFF7F7F7));
    bordeCirculoCentral(canvas, size, Colors.black);
    colorFondoCirculoCentral(canvas, size, const Color(0xFFF7F7F7));
    lineaDelCentro(canvas, size, Colors.black);
    areaGrandeLocal(canvas, size, Colors.black);
    colorAreaGrandeLocal(canvas, size, const Color(0xFFF7F7F7));
    areaGrandeVisita(canvas, size, Colors.black);
    colorAreaGrandeVisita(canvas, size, const Color(0xFFF7F7F7));
    areaChicaLocal(canvas, size, Colors.black);
    colorAreaChicaLocal(canvas, size, const Color(0xFFF7F7F7));
    areaChicaVisita(canvas, size, Colors.black);
    colorAreaChicaVisita(canvas, size, const Color(0xFFF7F7F7));
    circuloCentralCentro(canvas, size, Colors.black);

    TextSpan forLocal = TextSpan(
      style: TextStyle(
        color: Colors.blue.shade900,
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      text:
          '${data?.result?.response?[0].team?.name}  ${data?.result?.response?[0].formation}',
    );
    TextPainter painterForLocal = TextPainter(
      text: forLocal,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: size.width, minWidth: size.width);
    painterForLocal.paint(
      canvas,
      Offset(
        size.width * 0.05,
        size.height * 0.02,
      ),
    );

    TextSpan forVisita = TextSpan(
      style: TextStyle(
        color: Colors.blue.shade900,
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      text:
          '${data?.result?.response?[1].team?.name}  ${data?.result?.response?[1].formation}',
    );
    TextPainter painterForVisita = TextPainter(
      text: forVisita,
      textAlign: TextAlign.end,
      textDirection: TextDirection.ltr,
    )..layout(
        maxWidth: size.width - size.width * 0.05,
        minWidth: size.width - size.width * 0.05);
    painterForVisita.paint(
      canvas,
      Offset(
        0,
        size.height - (size.height * .04),
      ),
    );

    data?.result?.response?[0].startXI?.asMap().forEach((index, element) {
      playerPaint(
        canvas,
        size,
        hexToColor(data?.result?.response?[0].team?.colors?.player?.primary),
        element.player?.name ?? '',
        element.player?.number.toString() ?? '',
        localList?[index].player?.planx ?? 0.0,
        localList?[index].player?.plany ?? 0.0,
        data?.result?.response?[0].team?.colors?.player?.number ?? 'fff',
        context!,
      );
    });
    data?.result?.response?[1].startXI?.asMap().forEach((index, element) {
      playerPaint(
        canvas,
        size,
        hexToColor(data?.result?.response?[1].team?.colors?.player?.primary),
        element.player?.name ?? '',
        element.player?.number.toString() ?? '',
        visitList?[index].player?.planx ?? 0.0,
        visitList?[index].player?.plany ?? 0.0,
        data?.result?.response?[1].team?.colors?.player?.number ?? 'fff',
        context!,
      );
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
