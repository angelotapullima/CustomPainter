import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import '../utils.dart';

Canvas playerPaint(
  Canvas canvas,
  Size size,
  Color color,
  String nombreJugador,
  String numeroJugador,
  double posx,
  double posy,
  String colorNumber,
  BuildContext context,
) {
  double ancho = posx / 122;
  double alto = posy / 122;
  double marginLeft = (size.width * (0.08191131 + ancho)) -
      (nombreJugador.length * (size.width * 0.0065));
  double valorletra = size.width * 0.0125;
  double posicionNumero =
      size.width * (ancho + 0.0955) - (numeroJugador.length * 3);

  Path path_1 = Path();
  path_1.moveTo(size.width * 0.09018978 + (size.width * ancho),
      size.height * 0.8594773 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.08975804 + (size.width * ancho),
      size.height * 0.8596165 - (size.height * alto),
      size.width * 0.08933174 + (size.width * ancho),
      size.height * 0.8597573 - (size.height * alto),
      size.width * 0.08923652 + (size.width * ancho),
      size.height * 0.8597945 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.08914674 + (size.width * ancho),
      size.height * 0.8598285 - (size.height * alto),
      size.width * 0.08828870 + (size.width * ancho),
      size.height * 0.8599903 - (size.height * alto),
      size.width * 0.08732978 + (size.width * ancho),
      size.height * 0.8601505 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.08085804 + (size.width * ancho),
      size.height * 0.8612443 - (size.height * alto),
      size.width * 0.07537891 + (size.width * ancho),
      size.height * 0.8624838 - (size.height * alto),
      size.width * 0.07121217 + (size.width * ancho),
      size.height * 0.8637929 - (size.height * alto));
  path_1.lineTo(size.width * 0.07068500 + (size.width * ancho),
      size.height * 0.8639579 - (size.height * alto));
  path_1.lineTo(size.width * 0.06996152 + (size.width * ancho),
      size.height * 0.8649498 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.06904174 + (size.width * ancho),
      size.height * 0.8661990 - (size.height * alto),
      size.width * 0.06774065 + (size.width * ancho),
      size.height * 0.8681845 - (size.height * alto),
      size.width * 0.06723043 + (size.width * ancho),
      size.height * 0.8690922 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.06638913 + (size.width * ancho),
      size.height * 0.8706036 - (size.height * alto),
      size.width * 0.06596870 + (size.width * ancho),
      size.height * 0.8716408 - (size.height * alto),
      size.width * 0.06553674 + (size.width * ancho),
      size.height * 0.8732589 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.06505457 + (size.width * ancho),
      size.height * 0.8750761 - (size.height * alto),
      size.width * 0.06465630 + (size.width * ancho),
      size.height * 0.8763172 - (size.height * alto),
      size.width * 0.06453283 + (size.width * ancho),
      size.height * 0.8763770 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.06448804 + (size.width * ancho),
      size.height * 0.8763981 - (size.height * alto),
      size.width * 0.06345609 + (size.width * ancho),
      size.height * 0.8782055 - (size.height * alto),
      size.width * 0.06347870 + (size.width * ancho),
      size.height * 0.8782184 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.06348978 + (size.width * ancho),
      size.height * 0.8782233 - (size.height * alto),
      size.width * 0.06384870 + (size.width * ancho),
      size.height * 0.8783835 - (size.height * alto),
      size.width * 0.06428065 + (size.width * ancho),
      size.height * 0.8785793 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.06803239 + (size.width * ancho),
      size.height * 0.8802605 - (size.height * alto),
      size.width * 0.07155978 + (size.width * ancho),
      size.height * 0.8815097 - (size.height * alto),
      size.width * 0.07509848 + (size.width * ancho),
      size.height * 0.8824110 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07664065 + (size.width * ancho),
      size.height * 0.8828058 - (size.height * alto),
      size.width * 0.07811000 + (size.width * ancho),
      size.height * 0.8831230 - (size.height * alto),
      size.width * 0.07816609 + (size.width * ancho),
      size.height * 0.8830809 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07826717 + (size.width * ancho),
      size.height * 0.8830049 - (size.height * alto),
      size.width * 0.07904652 + (size.width * ancho),
      size.height * 0.8816019 - (size.height * alto),
      size.width * 0.07900739 + (size.width * ancho),
      size.height * 0.8815728 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07897935 + (size.width * ancho),
      size.height * 0.8815518 - (size.height * alto),
      size.width * 0.07906913 + (size.width * ancho),
      size.height * 0.8814126 - (size.height * alto),
      size.width * 0.07920370 + (size.width * ancho),
      size.height * 0.8812589 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07933261 + (size.width * ancho),
      size.height * 0.8811117 - (size.height * alto),
      size.width * 0.07951217 + (size.width * ancho),
      size.height * 0.8808608 - (size.height * alto),
      size.width * 0.07959630 + (size.width * ancho),
      size.height * 0.8807136 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07968022 + (size.width * ancho),
      size.height * 0.8805647 - (size.height * alto),
      size.width * 0.07975891 + (size.width * ancho),
      size.height * 0.8804515 - (size.height * alto),
      size.width * 0.07977000 + (size.width * ancho),
      size.height * 0.8804595 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07978130 + (size.width * ancho),
      size.height * 0.8804676 - (size.height * alto),
      size.width * 0.07975326 + (size.width * ancho),
      size.height * 0.8806456 - (size.height * alto),
      size.width * 0.07970826 + (size.width * ancho),
      size.height * 0.8808495 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07945043 + (size.width * ancho),
      size.height * 0.8819676 - (size.height * alto),
      size.width * 0.07914761 + (size.width * ancho),
      size.height * 0.8839822 - (size.height * alto),
      size.width * 0.07897935 + (size.width * ancho),
      size.height * 0.8856731 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07872696 + (size.width * ancho),
      size.height * 0.8881505 - (size.height * alto),
      size.width * 0.07866522 + (size.width * ancho),
      size.height * 0.8900939 - (size.height * alto),
      size.width * 0.07866522 + (size.width * ancho),
      size.height * 0.8953074 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07866522 + (size.width * ancho),
      size.height * 0.9020129 - (size.height * alto),
      size.width * 0.07853630 + (size.width * ancho),
      size.height * 0.9045663 - (size.height * alto),
      size.width * 0.07807630 + (size.width * ancho),
      size.height * 0.9072314 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07788022 + (size.width * ancho),
      size.height * 0.9083608 - (size.height * alto),
      size.width * 0.07777348 + (size.width * ancho),
      size.height * 0.9088236 - (size.height * alto),
      size.width * 0.07739783 + (size.width * ancho),
      size.height * 0.9101780 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.07736413 + (size.width * ancho),
      size.height * 0.9102799 - (size.height * alto),
      size.width * 0.07739217 + (size.width * ancho),
      size.height * 0.9102929 - (size.height * alto),
      size.width * 0.07803152 + (size.width * ancho),
      size.height * 0.9104790 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.08182261 + (size.width * ancho),
      size.height * 0.9115841 - (size.height * alto),
      size.width * 0.08688674 + (size.width * ancho),
      size.height * 0.9123252 - (size.height * alto),
      size.width * 0.09217500 + (size.width * ancho),
      size.height * 0.9125502 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.09343130 + (size.width * ancho),
      size.height * 0.9126003 - (size.height * alto),
      size.width * 0.09778326 + (size.width * ancho),
      size.height * 0.9125761 - (size.height * alto),
      size.width * 0.09865804 + (size.width * ancho),
      size.height * 0.9125081 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.09894413 + (size.width * ancho),
      size.height * 0.9124871 - (size.height * alto),
      size.width * 0.09946565 + (size.width * ancho),
      size.height * 0.9124951 - (size.height * alto),
      size.width * 0.1000880 + (size.width * ancho),
      size.height * 0.9125340 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1006265 + (size.width * ancho),
      size.height * 0.9125631 - (size.height * alto),
      size.width * 0.1018378 + (size.width * ancho),
      size.height * 0.9126003 - (size.height * alto),
      size.width * 0.1027800 + (size.width * ancho),
      size.height * 0.9126133 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1087580 + (size.width * ancho),
      size.height * 0.9127071 - (size.height * alto),
      size.width * 0.1155159 + (size.width * ancho),
      size.height * 0.9119369 - (size.height * alto),
      size.width * 0.1201537 + (size.width * ancho),
      size.height * 0.9106359 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1205743 + (size.width * ancho),
      size.height * 0.9105178 - (size.height * alto),
      size.width * 0.1210061 + (size.width * ancho),
      size.height * 0.9103981 - (size.height * alto),
      size.width * 0.1211072 + (size.width * ancho),
      size.height * 0.9103738 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1212024 + (size.width * ancho),
      size.height * 0.9103528 - (size.height * alto),
      size.width * 0.1212865 + (size.width * ancho),
      size.height * 0.9103091 - (size.height * alto),
      size.width * 0.1212865 + (size.width * ancho),
      size.height * 0.9102848 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1212865 + (size.width * ancho),
      size.height * 0.9102589 - (size.height * alto),
      size.width * 0.1211967 + (size.width * ancho),
      size.height * 0.9099159 - (size.height * alto),
      size.width * 0.1210902 + (size.width * ancho),
      size.height * 0.9095259 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1207817 + (size.width * ancho),
      size.height * 0.9083867 - (size.height * alto),
      size.width * 0.1205239 + (size.width * ancho),
      size.height * 0.9070065 - (size.height * alto),
      size.width * 0.1203667 + (size.width * ancho),
      size.height * 0.9056634 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1200976 + (size.width * ancho),
      size.height * 0.9033900 - (size.height * alto),
      size.width * 0.1200472 + (size.width * ancho),
      size.height * 0.9019871 - (size.height * alto),
      size.width * 0.1200248 + (size.width * ancho),
      size.height * 0.8960275 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1199967 + (size.width * ancho),
      size.height * 0.8893625 - (size.height * alto),
      size.width * 0.1199239 + (size.width * ancho),
      size.height * 0.8874482 - (size.height * alto),
      size.width * 0.1195761 + (size.width * ancho),
      size.height * 0.8845922 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1194135 + (size.width * ancho),
      size.height * 0.8832751 - (size.height * alto),
      size.width * 0.1191107 + (size.width * ancho),
      size.height * 0.8814628 - (size.height * alto),
      size.width * 0.1188976 + (size.width * ancho),
      size.height * 0.8805178 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1188807 + (size.width * ancho),
      size.height * 0.8804288 - (size.height * alto),
      size.width * 0.1189424 + (size.width * ancho),
      size.height * 0.8805065 - (size.height * alto),
      size.width * 0.1190659 + (size.width * ancho),
      size.height * 0.8807168 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1191778 + (size.width * ancho),
      size.height * 0.8809045 - (size.height * alto),
      size.width * 0.1193911 + (size.width * ancho),
      size.height * 0.8811958 - (size.height * alto),
      size.width * 0.1195424 + (size.width * ancho),
      size.height * 0.8813608 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1197220 + (size.width * ancho),
      size.height * 0.8815599 - (size.height * alto),
      size.width * 0.1197891 + (size.width * ancho),
      size.height * 0.8816699 - (size.height * alto),
      size.width * 0.1197387 + (size.width * ancho),
      size.height * 0.8816699 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1196939 + (size.width * ancho),
      size.height * 0.8816699 - (size.height * alto),
      size.width * 0.1196602 + (size.width * ancho),
      size.height * 0.8816796 - (size.height * alto),
      size.width * 0.1196602 + (size.width * ancho),
      size.height * 0.8816909 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1196602 + (size.width * ancho),
      size.height * 0.8817298 - (size.height * alto),
      size.width * 0.1205070 + (size.width * ancho),
      size.height * 0.8831748 - (size.height * alto),
      size.width * 0.1205463 + (size.width * ancho),
      size.height * 0.8832039 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1205687 + (size.width * ancho),
      size.height * 0.8832201 - (size.height * alto),
      size.width * 0.1210902 + (size.width * ancho),
      size.height * 0.8831230 - (size.height * alto),
      size.width * 0.1217072 + (size.width * ancho),
      size.height * 0.8829838 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1259917 + (size.width * ancho),
      size.height * 0.8820259 - (size.height * alto),
      size.width * 0.1297043 + (size.width * ancho),
      size.height * 0.8807848 - (size.height * alto),
      size.width * 0.1341402 + (size.width * ancho),
      size.height * 0.8788236 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1347178 + (size.width * ancho),
      size.height * 0.8785696 - (size.height * alto),
      size.width * 0.1352059 + (size.width * ancho),
      size.height * 0.8783463 - (size.height * alto),
      size.width * 0.1352170 + (size.width * ancho),
      size.height * 0.8783333 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1352393 + (size.width * ancho),
      size.height * 0.8782945 - (size.height * alto),
      size.width * 0.1342524 + (size.width * ancho),
      size.height * 0.8765324 - (size.height * alto),
      size.width * 0.1341907 + (size.width * ancho),
      size.height * 0.8765032 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1340561 + (size.width * ancho),
      size.height * 0.8764434 - (size.height * alto),
      size.width * 0.1336243 + (size.width * ancho),
      size.height * 0.8751359 - (size.height * alto),
      size.width * 0.1332093 + (size.width * ancho),
      size.height * 0.8735599 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1326317 + (size.width * ancho),
      size.height * 0.8713625 - (size.height * alto),
      size.width * 0.1320876 + (size.width * ancho),
      size.height * 0.8701165 - (size.height * alto),
      size.width * 0.1307361 + (size.width * ancho),
      size.height * 0.8679353 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1300183 + (size.width * ancho),
      size.height * 0.8667783 - (size.height * alto),
      size.width * 0.1281115 + (size.width * ancho),
      size.height * 0.8640728 - (size.height * alto),
      size.width * 0.1279433 + (size.width * ancho),
      size.height * 0.8639790 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1277976 + (size.width * ancho),
      size.height * 0.8638948 - (size.height * alto),
      size.width * 0.1257002 + (size.width * ancho),
      size.height * 0.8632767 - (size.height * alto),
      size.width * 0.1240907 + (size.width * ancho),
      size.height * 0.8628495 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1205576 + (size.width * ancho),
      size.height * 0.8618997 - (size.height * alto),
      size.width * 0.1161328 + (size.width * ancho),
      size.height * 0.8609773 - (size.height * alto),
      size.width * 0.1111135 + (size.width * ancho),
      size.height * 0.8601343 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1102163 + (size.width * ancho),
      size.height * 0.8599822 - (size.height * alto),
      size.width * 0.1094200 + (size.width * ancho),
      size.height * 0.8598625 - (size.height * alto),
      size.width * 0.1093413 + (size.width * ancho),
      size.height * 0.8598673 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1092628 + (size.width * ancho),
      size.height * 0.8598706 - (size.height * alto),
      size.width * 0.1088478 + (size.width * ancho),
      size.height * 0.8597443 - (size.height * alto),
      size.width * 0.1084217 + (size.width * ancho),
      size.height * 0.8595922 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1079954 + (size.width * ancho),
      size.height * 0.8594353 - (size.height * alto),
      size.width * 0.1076252 + (size.width * ancho),
      size.height * 0.8593074 - (size.height * alto),
      size.width * 0.1075972 + (size.width * ancho),
      size.height * 0.8593074 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1075748 + (size.width * ancho),
      size.height * 0.8593074 - (size.height * alto),
      size.width * 0.1073954 + (size.width * ancho),
      size.height * 0.8595032 - (size.height * alto),
      size.width * 0.1072048 + (size.width * ancho),
      size.height * 0.8597395 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1046250 + (size.width * ancho),
      size.height * 0.8629126 - (size.height * alto),
      size.width * 0.1027183 + (size.width * ancho),
      size.height * 0.8643770 - (size.height * alto),
      size.width * 0.1006546 + (size.width * ancho),
      size.height * 0.8647670 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.1000880 + (size.width * ancho),
      size.height * 0.8648738 - (size.height * alto),
      size.width * 0.09924130 + (size.width * ancho),
      size.height * 0.8648867 - (size.height * alto),
      size.width * 0.09866913 + (size.width * ancho),
      size.height * 0.8647929 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.09652696 + (size.width * ancho),
      size.height * 0.8644498 - (size.height * alto),
      size.width * 0.09412674 + (size.width * ancho),
      size.height * 0.8627896 - (size.height * alto),
      size.width * 0.09159196 + (size.width * ancho),
      size.height * 0.8598964 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.09126652 + (size.width * ancho),
      size.height * 0.8595275 - (size.height * alto),
      size.width * 0.09099174 + (size.width * ancho),
      size.height * 0.8592233 - (size.height * alto),
      size.width * 0.09098609 + (size.width * ancho),
      size.height * 0.8592233 - (size.height * alto));
  path_1.cubicTo(
      size.width * 0.09098065 + (size.width * ancho),
      size.height * 0.8592282 - (size.height * alto),
      size.width * 0.09062174 + (size.width * ancho),
      size.height * 0.8593382 - (size.height * alto),
      size.width * 0.09018978 + (size.width * ancho),
      size.height * 0.8594773 - (size.height * alto));
  path_1.close();

  Paint paint1fill = Paint()..style = PaintingStyle.fill;
  paint1fill.color = Colors.black.withOpacity(1.0);
  canvas.drawPath(path_1, paint1fill);

  Path path_2 = Path();
  path_2.moveTo(size.width * 0.09120043 + (size.width * ancho),
      size.height * 0.8602783 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.09078043 + (size.width * ancho),
      size.height * 0.8604142 - (size.height * alto),
      size.width * 0.09036587 + (size.width * ancho),
      size.height * 0.8605502 - (size.height * alto),
      size.width * 0.09027304 + (size.width * ancho),
      size.height * 0.8605874 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.09018587 + (size.width * ancho),
      size.height * 0.8606197 - (size.height * alto),
      size.width * 0.08935109 + (size.width * ancho),
      size.height * 0.8607751 - (size.height * alto),
      size.width * 0.08841826 + (size.width * ancho),
      size.height * 0.8609320 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08212326 + (size.width * ancho),
      size.height * 0.8619919 - (size.height * alto),
      size.width * 0.07679348 + (size.width * ancho),
      size.height * 0.8631942 - (size.height * alto),
      size.width * 0.07274043 + (size.width * ancho),
      size.height * 0.8644644 - (size.height * alto));
  path_2.lineTo(size.width * 0.07222761 + (size.width * ancho),
      size.height * 0.8646246 - (size.height * alto));
  path_2.lineTo(size.width * 0.07152391 + (size.width * ancho),
      size.height * 0.8655858 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.07062913 + (size.width * ancho),
      size.height * 0.8667961 - (size.height * alto),
      size.width * 0.06936370 + (size.width * ancho),
      size.height * 0.8687233 - (size.height * alto),
      size.width * 0.06886717 + (size.width * ancho),
      size.height * 0.8696019 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.06804891 + (size.width * ancho),
      size.height * 0.8710680 - (size.height * alto),
      size.width * 0.06763978 + (size.width * ancho),
      size.height * 0.8720744 - (size.height * alto),
      size.width * 0.06721978 + (size.width * ancho),
      size.height * 0.8736424 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.06675065 + (size.width * ancho),
      size.height * 0.8754045 - (size.height * alto),
      size.width * 0.06636326 + (size.width * ancho),
      size.height * 0.8766084 - (size.height * alto),
      size.width * 0.06624326 + (size.width * ancho),
      size.height * 0.8766650 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.06619957 + (size.width * ancho),
      size.height * 0.8766861 - (size.height * alto),
      size.width * 0.06519587 + (size.width * ancho),
      size.height * 0.8784401 - (size.height * alto),
      size.width * 0.06521783 + (size.width * ancho),
      size.height * 0.8784515 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.06522870 + (size.width * ancho),
      size.height * 0.8784563 - (size.height * alto),
      size.width * 0.06557783 + (size.width * ancho),
      size.height * 0.8786117 - (size.height * alto),
      size.width * 0.06599783 + (size.width * ancho),
      size.height * 0.8788010 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.06964739 + (size.width * ancho),
      size.height * 0.8804320 - (size.height * alto),
      size.width * 0.07307848 + (size.width * ancho),
      size.height * 0.8816440 - (size.height * alto),
      size.width * 0.07652065 + (size.width * ancho),
      size.height * 0.8825178 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.07802087 + (size.width * ancho),
      size.height * 0.8828997 - (size.height * alto),
      size.width * 0.07945022 + (size.width * ancho),
      size.height * 0.8832087 - (size.height * alto),
      size.width * 0.07950478 + (size.width * ancho),
      size.height * 0.8831667 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.07960283 + (size.width * ancho),
      size.height * 0.8830939 - (size.height * alto),
      size.width * 0.08036109 + (size.width * ancho),
      size.height * 0.8817330 - (size.height * alto),
      size.width * 0.08032304 + (size.width * ancho),
      size.height * 0.8817055 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08029565 + (size.width * ancho),
      size.height * 0.8816845 - (size.height * alto),
      size.width * 0.08038304 + (size.width * ancho),
      size.height * 0.8815485 - (size.height * alto),
      size.width * 0.08051391 + (size.width * ancho),
      size.height * 0.8814013 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08063935 + (size.width * ancho),
      size.height * 0.8812573 - (size.height * alto),
      size.width * 0.08081391 + (size.width * ancho),
      size.height * 0.8810146 - (size.height * alto),
      size.width * 0.08089565 + (size.width * ancho),
      size.height * 0.8808706 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08097761 + (size.width * ancho),
      size.height * 0.8807282 - (size.height * alto),
      size.width * 0.08105391 + (size.width * ancho),
      size.height * 0.8806165 - (size.height * alto),
      size.width * 0.08106478 + (size.width * ancho),
      size.height * 0.8806246 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08107587 + (size.width * ancho),
      size.height * 0.8806327 - (size.height * alto),
      size.width * 0.08104848 + (size.width * ancho),
      size.height * 0.8808058 - (size.height * alto),
      size.width * 0.08100478 + (size.width * ancho),
      size.height * 0.8810032 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08075391 + (size.width * ancho),
      size.height * 0.8820874 - (size.height * alto),
      size.width * 0.08045935 + (size.width * ancho),
      size.height * 0.8840421 - (size.height * alto),
      size.width * 0.08029565 + (size.width * ancho),
      size.height * 0.8856812 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08005022 + (size.width * ancho),
      size.height * 0.8880825 - (size.height * alto),
      size.width * 0.07999022 + (size.width * ancho),
      size.height * 0.8899676 - (size.height * alto),
      size.width * 0.07999022 + (size.width * ancho),
      size.height * 0.8950243 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.07999022 + (size.width * ancho),
      size.height * 0.9015259 - (size.height * alto),
      size.width * 0.07986478 + (size.width * ancho),
      size.height * 0.9040016 - (size.height * alto),
      size.width * 0.07941739 + (size.width * ancho),
      size.height * 0.9065858 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.07922652 + (size.width * ancho),
      size.height * 0.9076812 - (size.height * alto),
      size.width * 0.07912283 + (size.width * ancho),
      size.height * 0.9081294 - (size.height * alto),
      size.width * 0.07875739 + (size.width * ancho),
      size.height * 0.9094434 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.07872457 + (size.width * ancho),
      size.height * 0.9095421 - (size.height * alto),
      size.width * 0.07875196 + (size.width * ancho),
      size.height * 0.9095550 - (size.height * alto),
      size.width * 0.07937370 + (size.width * ancho),
      size.height * 0.9097346 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.08306152 + (size.width * ancho),
      size.height * 0.9108074 - (size.height * alto),
      size.width * 0.08798739 + (size.width * ancho),
      size.height * 0.9115259 - (size.height * alto),
      size.width * 0.09313152 + (size.width * ancho),
      size.height * 0.9117427 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.09435348 + (size.width * ancho),
      size.height * 0.9117929 - (size.height * alto),
      size.width * 0.09858674 + (size.width * ancho),
      size.height * 0.9117686 - (size.height * alto),
      size.width * 0.09943761 + (size.width * ancho),
      size.height * 0.9117023 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.09971587 + (size.width * ancho),
      size.height * 0.9116812 - (size.height * alto),
      size.width * 0.1002233 + (size.width * ancho),
      size.height * 0.9116893 - (size.height * alto),
      size.width * 0.1008287 + (size.width * ancho),
      size.height * 0.9117265 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1013524 + (size.width * ancho),
      size.height * 0.9117557 - (size.height * alto),
      size.width * 0.1025307 + (size.width * ancho),
      size.height * 0.9117929 - (size.height * alto),
      size.width * 0.1034472 + (size.width * ancho),
      size.height * 0.9118042 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1092624 + (size.width * ancho),
      size.height * 0.9118948 - (size.height * alto),
      size.width * 0.1158359 + (size.width * ancho),
      size.height * 0.9111472 - (size.height * alto),
      size.width * 0.1203472 + (size.width * ancho),
      size.height * 0.9098867 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1207563 + (size.width * ancho),
      size.height * 0.9097718 - (size.height * alto),
      size.width * 0.1211763 + (size.width * ancho),
      size.height * 0.9096570 - (size.height * alto),
      size.width * 0.1212746 + (size.width * ancho),
      size.height * 0.9096327 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1213674 + (size.width * ancho),
      size.height * 0.9096117 - (size.height * alto),
      size.width * 0.1214491 + (size.width * ancho),
      size.height * 0.9095712 - (size.height * alto),
      size.width * 0.1214491 + (size.width * ancho),
      size.height * 0.9095453 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1214491 + (size.width * ancho),
      size.height * 0.9095210 - (size.height * alto),
      size.width * 0.1213617 + (size.width * ancho),
      size.height * 0.9091893 - (size.height * alto),
      size.width * 0.1212583 + (size.width * ancho),
      size.height * 0.9088107 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1209580 + (size.width * ancho),
      size.height * 0.9077055 - (size.height * alto),
      size.width * 0.1207072 + (size.width * ancho),
      size.height * 0.9063673 - (size.height * alto),
      size.width * 0.1205546 + (size.width * ancho),
      size.height * 0.9050647 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1202926 + (size.width * ancho),
      size.height * 0.9028592 - (size.height * alto),
      size.width * 0.1202435 + (size.width * ancho),
      size.height * 0.9015000 - (size.height * alto),
      size.width * 0.1202217 + (size.width * ancho),
      size.height * 0.8957217 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1201943 + (size.width * ancho),
      size.height * 0.8892573 - (size.height * alto),
      size.width * 0.1201235 + (size.width * ancho),
      size.height * 0.8874013 - (size.height * alto),
      size.width * 0.1197852 + (size.width * ancho),
      size.height * 0.8846327 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1196272 + (size.width * ancho),
      size.height * 0.8833560 - (size.height * alto),
      size.width * 0.1193326 + (size.width * ancho),
      size.height * 0.8815987 - (size.height * alto),
      size.width * 0.1191252 + (size.width * ancho),
      size.height * 0.8806828 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1191089 + (size.width * ancho),
      size.height * 0.8805955 - (size.height * alto),
      size.width * 0.1191689 + (size.width * ancho),
      size.height * 0.8806699 - (size.height * alto),
      size.width * 0.1192889 + (size.width * ancho),
      size.height * 0.8808754 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1193980 + (size.width * ancho),
      size.height * 0.8810566 - (size.height * alto),
      size.width * 0.1196052 + (size.width * ancho),
      size.height * 0.8813398 - (size.height * alto),
      size.width * 0.1197526 + (size.width * ancho),
      size.height * 0.8815000 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1199272 + (size.width * ancho),
      size.height * 0.8816926 - (size.height * alto),
      size.width * 0.1199926 + (size.width * ancho),
      size.height * 0.8817994 - (size.height * alto),
      size.width * 0.1199435 + (size.width * ancho),
      size.height * 0.8817994 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1198998 + (size.width * ancho),
      size.height * 0.8817994 - (size.height * alto),
      size.width * 0.1198672 + (size.width * ancho),
      size.height * 0.8818074 - (size.height * alto),
      size.width * 0.1198672 + (size.width * ancho),
      size.height * 0.8818204 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1198672 + (size.width * ancho),
      size.height * 0.8818576 - (size.height * alto),
      size.width * 0.1206909 + (size.width * ancho),
      size.height * 0.8832573 - (size.height * alto),
      size.width * 0.1207291 + (size.width * ancho),
      size.height * 0.8832864 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1207509 + (size.width * ancho),
      size.height * 0.8833026 - (size.height * alto),
      size.width * 0.1212583 + (size.width * ancho),
      size.height * 0.8832087 - (size.height * alto),
      size.width * 0.1218583 + (size.width * ancho),
      size.height * 0.8830728 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1260259 + (size.width * ancho),
      size.height * 0.8821440 - (size.height * alto),
      size.width * 0.1296372 + (size.width * ancho),
      size.height * 0.8809417 - (size.height * alto),
      size.width * 0.1339522 + (size.width * ancho),
      size.height * 0.8790388 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1345141 + (size.width * ancho),
      size.height * 0.8787929 - (size.height * alto),
      size.width * 0.1349887 + (size.width * ancho),
      size.height * 0.8785761 - (size.height * alto),
      size.width * 0.1349996 + (size.width * ancho),
      size.height * 0.8785631 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1350215 + (size.width * ancho),
      size.height * 0.8785259 - (size.height * alto),
      size.width * 0.1340613 + (size.width * ancho),
      size.height * 0.8768172 - (size.height * alto),
      size.width * 0.1340013 + (size.width * ancho),
      size.height * 0.8767896 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1338704 + (size.width * ancho),
      size.height * 0.8767314 - (size.height * alto),
      size.width * 0.1334504 + (size.width * ancho),
      size.height * 0.8754628 - (size.height * alto),
      size.width * 0.1330467 + (size.width * ancho),
      size.height * 0.8739353 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1324848 + (size.width * ancho),
      size.height * 0.8718026 - (size.height * alto),
      size.width * 0.1319557 + (size.width * ancho),
      size.height * 0.8705955 - (size.height * alto),
      size.width * 0.1306411 + (size.width * ancho),
      size.height * 0.8684806 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1299428 + (size.width * ancho),
      size.height * 0.8673592 - (size.height * alto),
      size.width * 0.1280880 + (size.width * ancho),
      size.height * 0.8647346 - (size.height * alto),
      size.width * 0.1279243 + (size.width * ancho),
      size.height * 0.8646440 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1277826 + (size.width * ancho),
      size.height * 0.8645631 - (size.height * alto),
      size.width * 0.1257424 + (size.width * ancho),
      size.height * 0.8639628 - (size.height * alto),
      size.width * 0.1241767 + (size.width * ancho),
      size.height * 0.8635485 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1207400 + (size.width * ancho),
      size.height * 0.8626278 - (size.height * alto),
      size.width * 0.1164359 + (size.width * ancho),
      size.height * 0.8617330 - (size.height * alto),
      size.width * 0.1115535 + (size.width * ancho),
      size.height * 0.8609159 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1106807 + (size.width * ancho),
      size.height * 0.8607670 - (size.height * alto),
      size.width * 0.1099061 + (size.width * ancho),
      size.height * 0.8606521 - (size.height * alto),
      size.width * 0.1098298 + (size.width * ancho),
      size.height * 0.8606570 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1097533 + (size.width * ancho),
      size.height * 0.8606602 - (size.height * alto),
      size.width * 0.1093496 + (size.width * ancho),
      size.height * 0.8605372 - (size.height * alto),
      size.width * 0.1089350 + (size.width * ancho),
      size.height * 0.8603900 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1085204 + (size.width * ancho),
      size.height * 0.8602379 - (size.height * alto),
      size.width * 0.1081604 + (size.width * ancho),
      size.height * 0.8601149 - (size.height * alto),
      size.width * 0.1081333 + (size.width * ancho),
      size.height * 0.8601149 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1081113 + (size.width * ancho),
      size.height * 0.8601149 - (size.height * alto),
      size.width * 0.1079367 + (size.width * ancho),
      size.height * 0.8603042 - (size.height * alto),
      size.width * 0.1077513 + (size.width * ancho),
      size.height * 0.8605340 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1052420 + (size.width * ancho),
      size.height * 0.8636100 - (size.height * alto),
      size.width * 0.1033872 + (size.width * ancho),
      size.height * 0.8650307 - (size.height * alto),
      size.width * 0.1013798 + (size.width * ancho),
      size.height * 0.8654078 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.1008287 + (size.width * ancho),
      size.height * 0.8655113 - (size.height * alto),
      size.width * 0.1000050 + (size.width * ancho),
      size.height * 0.8655227 - (size.height * alto),
      size.width * 0.09944870 + (size.width * ancho),
      size.height * 0.8654337 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.09736478 + (size.width * ancho),
      size.height * 0.8651003 - (size.height * alto),
      size.width * 0.09503000 + (size.width * ancho),
      size.height * 0.8634903 - (size.height * alto),
      size.width * 0.09256435 + (size.width * ancho),
      size.height * 0.8606861 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.09224783 + (size.width * ancho),
      size.height * 0.8603285 - (size.height * alto),
      size.width * 0.09198065 + (size.width * ancho),
      size.height * 0.8600324 - (size.height * alto),
      size.width * 0.09197500 + (size.width * ancho),
      size.height * 0.8600324 - (size.height * alto));
  path_2.cubicTo(
      size.width * 0.09196957 + (size.width * ancho),
      size.height * 0.8600372 - (size.height * alto),
      size.width * 0.09162043 + (size.width * ancho),
      size.height * 0.8601440 - (size.height * alto),
      size.width * 0.09120043 + (size.width * ancho),
      size.height * 0.8602783 - (size.height * alto));
  path_2.close();

  Paint paint2fill = Paint()..style = PaintingStyle.fill;
  paint2fill.color = color.withOpacity(1.0);
  canvas.drawPath(path_2, paint2fill);

  TextSpan spanJugador = TextSpan(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 9,
        fontWeight: FontWeight.w600,
      ),
      text: nombreJugador);

  TextPainter textPainternJugador = TextPainter(
    text: spanJugador,
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.start,
  )..layout(
      maxWidth: 150,
      minWidth: nombreJugador.length.toDouble(),
    );

  Paint paint = Paint()..style = PaintingStyle.fill;
  paint.color = Colors.white.withOpacity(1.0);

  canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(
          marginLeft,
          (size.height * 0.909709 - (size.height * alto)),
          (valorletra * (nombreJugador.length + 2.5)),
          size.height * 0.02113510,
        ),
        bottomRight: Radius.circular(size.width * 0.01368388),
        bottomLeft: Radius.circular(size.width * 0.01368388),
        topLeft: Radius.circular(size.width * 0.01368388),
        topRight: Radius.circular(size.width * 0.01368388),
      ),
      paint);

  textPainternJugador.paint(
    canvas,
    Offset(marginLeft + (valorletra * 1),
        (size.height * 0.9099709 - (size.height * alto))),
  );

  TextSpan spanNumeroJugador = TextSpan(
      style: TextStyle(
        color: hexToColor(colorNumber),
        //color: Colors.white,
        fontSize: 11.5,
        fontWeight: FontWeight.w600,
      ),
      text: numeroJugador);
  TextPainter textPainternuJugador1Local = TextPainter(
    text: spanNumeroJugador,
    textDirection: TextDirection.ltr,
  )..layout(maxWidth: 160, minWidth: 160);
  textPainternuJugador1Local.paint(
    canvas,
    Offset(
      posicionNumero,
      (size.height * 0.87399709 - (size.height * alto)),
    ),
  );
  return canvas;
}
