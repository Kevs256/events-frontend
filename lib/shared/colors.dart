import 'package:flutter/material.dart';
import 'dart:math';

class AppColors {
  static const primaryColor = Color(0xFF6200EE);
  static const secondaryColor = Color(0xFF3700B3);
  static const terciaryColor = Color(0xFFBB86FC);
  static const bgColor = Color(0xFFFFFFFF);
  static const surfaceColor = Color(0xFFFFFFFF);
  static const errorColor = Color(0xFFB00020);

  static const onPrimaryColor = Color(0xFFFFFFFF);
  static const onSecondaryColor = Color(0x00000000);
  static const onBgColor = Color(0x00000000);
  static const onSurfaceColor = Color(0x00000000);
  static const onErrorColor = Color(0xFFFFFFFF);
}

Color getRandomColor() {
  final random = Random();
  final r = random.nextInt(256);
  final g = random.nextInt(256);
  final b = random.nextInt(256);

  return Color.fromARGB(255, r, g, b);
}
