import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_fonts.dart';
import '../core/utils/app_styles.dart';

abstract class ThemeConfig {
  static ThemeData getLightTheme() {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      textTheme: TextTheme(
        titleLarge: AppStyles.getBlackStyle(),
        titleMedium: AppStyles.getBoldStyle(),
        titleSmall: AppStyles.getSemiBoldStyle(),
        bodyLarge: AppStyles.getRegularStyle(),
        bodyMedium: AppStyles.getMediumStyle(),
        bodySmall: AppStyles.getLightStyle(color: AppColors.grey),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppStyles.getMediumStyle(),
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(360),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: AppStyles.getRegularStyle(
          fontSize: AppFontSize.title,
        ),
        backgroundColor: AppColors.white,
      ),
      useMaterial3: true,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primary,
        showSelectedLabels: true,
        unselectedItemColor: AppColors.grey200,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: AppColors.primary),
        unselectedIconTheme: IconThemeData(color: AppColors.grey200),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),
    );
  }
}
