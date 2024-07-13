import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_apps/config/themes/app_colors.dart';

class AppThemes {
  AppThemes._();

  static ThemeData theme = ThemeData.light().copyWith(
    primaryColor: AppColors.primary,
    focusColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.gray50,
    textTheme: GoogleFonts.latoTextTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
    ),
  );
}
