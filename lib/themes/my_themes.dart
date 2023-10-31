import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static TextStyle poppins700(
      {Color textColor = Colors.white, required double fontSize}) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: textColor,
    );
  }

  static TextStyle inter400(
      {Color textColor = Colors.white, required double fontSize}) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: textColor,
    );
  }

  static TextStyle inter500(
      {Color textColor = Colors.white, required double fontSize}) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: textColor,
    );
  }

  static TextStyle inter700(
      {Color textColor = Colors.white, required double fontSize}) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: textColor,
    );
  }
}
