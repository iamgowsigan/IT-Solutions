import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color themeColor = Color(0xFFDCDCDC);
Color txtcolor = Colors.black87;
Color btncolor = Color(0xFF313131);
Color basecolor = Color(0xFF4C4C4C);

class Config {
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.grey,
    colorScheme: ColorScheme.light(),
    textTheme: GoogleFonts.poppinsTextTheme(),
    cardColor: Colors.white,
    dividerColor: Colors.white,
    backgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: themeColor,
    )),
  );
}
