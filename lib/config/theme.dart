import 'package:flutter/material.dart';

import '../shared/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primaryColor,
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(fontFamily: 'Almarai')),
  );
}
