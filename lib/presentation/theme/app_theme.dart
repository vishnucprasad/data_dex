import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: kPrimaryColor,
    primarySwatch: kPrimarySwatch,
    scaffoldBackgroundColor: kLightColor,
    canvasColor: Colors.transparent,
    fontFamily: GoogleFonts.outfit().fontFamily,
  );
}
