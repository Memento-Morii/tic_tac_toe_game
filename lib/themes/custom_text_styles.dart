import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_game/constants/custom_colors.dart';

class CustomTextStyle {
  static TextStyle whiteHeadlineOne = TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.bold).fontFamily,
  );
  static TextStyle blackHeadlineOne = TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.bold).fontFamily,
  );
  static TextStyle primaryHeadline = TextStyle(
    fontSize: 60,
    color: CustomColors.primaryColor,
    fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.bold).fontFamily,
  );
  static TextStyle secondaryHeadline = TextStyle(
    fontSize: 60,
    color: CustomColors.secondaryColor,
    fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.bold).fontFamily,
  );

  static TextStyle blackBodyOne = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
  static TextStyle blackBoldBodyOne = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.bold).fontFamily,
  );
  static TextStyle whiteBodyOne = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
