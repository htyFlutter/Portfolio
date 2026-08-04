import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextdata {
  //タイトルなどで使う
  static TextStyle get titleFonts => GoogleFonts.zenMaruGothic().copyWith(
    letterSpacing: 1.1,
    fontSize: 24,
    height: 18.0 / 16.0,
  );

  //クイズの4択問題で使う
  static TextStyle get quizFonts => GoogleFonts.montserrat().copyWith(
    letterSpacing: 1.1,
    fontSize: 18,
    height: 18.0 / 16.0,
  );

  //チャットで使うフォント
  static TextStyle get chatFonts => GoogleFonts.kiwiMaru().copyWith(
    letterSpacing: 1.1,
    fontSize: 16,
    height: 18.0 / 16.0,
  );

  static TextStyle get unitFonts => GoogleFonts.mPlusRounded1c().copyWith(
    letterSpacing: 1.1, fontSize: 16, height: 18.0 / 16.0,
  );
}
