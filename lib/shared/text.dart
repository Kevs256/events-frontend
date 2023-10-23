import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final bool isBold;
  final double fontSize;

  const TextWidget(
      {super.key,
      required this.text,
      this.textColor = AppColors.onBgColor,
      this.isBold = false,
      this.fontSize = FontSize.fontSizeMedium});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
