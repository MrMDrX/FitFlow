import 'package:fitflow/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    brightness: Brightness.dark,
  );

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundLight,
    brightness: Brightness.light,
  );
}
