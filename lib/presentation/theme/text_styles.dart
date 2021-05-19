import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

// Static getters for text styles
class AppTextStyle {
  // Headline 1
  static TextStyle get appBarTitle => GoogleFonts.openSans(
        fontSize: 18.0,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      );
  // Headline 2
  static TextStyle get cardTitle => GoogleFonts.openSans(
        fontSize: 16.0,
        color: AppColors.doveGray,
        fontWeight: FontWeight.w600,
      );
  // Headline 3
  static TextStyle get extraContentTitle => GoogleFonts.openSans(
        fontSize: 14.0,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
      );
  // Bodytext 1
  static TextStyle get cardContent => GoogleFonts.roboto(
        fontSize: 14.0,
        color: Colors.black87,
      );
  // Caption
  static TextStyle get cardDetails => GoogleFonts.openSans(
        fontSize: 16.0,
        color: AppColors.mountainMeadow,
        fontWeight: FontWeight.w600,
      );
}
