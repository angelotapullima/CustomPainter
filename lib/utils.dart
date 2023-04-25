import 'package:flutter/material.dart';

Color hexToColor(String? code) {
  String aaaa = '#$code';
  var colorsHexString =
      Color(int.parse(aaaa.substring(1, 7), radix: 16) + 0xFF000000);
  return colorsHexString;
}
