import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.bgColor,
    primaryColor: AppColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      background: AppColors.bgColor,
      error: AppColors.errorColor,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      )
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            )
        )
    ),
    textTheme: TextTheme(
      displayMedium: GoogleFonts.manrope(
        textStyle: const TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.50,
          //height: 0.01,
        ),
      ),
      displaySmall: GoogleFonts.manrope(
        textStyle: const TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.50,
         // height: 0.02,
        ),
      ),
      headlineMedium: GoogleFonts.manrope(
          textStyle: const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w400,
     //   height: 0.02,
      )),
      headlineSmall: GoogleFonts.manrope(
          textStyle: const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
     //   height: 0.04,
      )),
      titleLarge: GoogleFonts.manrope(
          textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      //  height: 0.06,
      )),
      titleMedium: GoogleFonts.manrope(
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
      //    height: 0.08,
        ),
      ),
      titleSmall: GoogleFonts.manrope(
          textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      //  height: 0.11,
      )),
      bodyLarge: GoogleFonts.manrope(
          textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.10,
     ///   height: 0.11,
      )),
      bodyMedium: GoogleFonts.manrope(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
      //    height: 0.09,
        ),
      ),
      bodySmall: GoogleFonts.manrope(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.17,
     //     height: 0.10,
        ),
      ),
      labelLarge: GoogleFonts.manrope(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.40,
   //       height: 0.14,
        ),
      ),
      labelSmall: GoogleFonts.manrope(
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
     //     height: 0.22,
        ),
      ),
    ),
  );
}
