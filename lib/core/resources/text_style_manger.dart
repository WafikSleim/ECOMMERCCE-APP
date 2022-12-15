import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fonts_manger.dart';

class TextStyleManger {
  static TextStyle getStyle({required Color color, required double fontSize, required FontWeight fontWeight}) {
    return GoogleFonts.nunitoSans(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getBoldStyle({required Color color, required double fontSize}) {
    return getStyle(color: color, fontSize: fontSize, fontWeight: FontWeightManger.bold);
  }

  static TextStyle getMediumStyle({required Color color, required double fontSize}) {
    return getStyle(color: color, fontSize: fontSize, fontWeight: FontWeightManger.medium);
  }

  static TextStyle getRegularStyle({required Color color, required double fontSize}) {
    return getStyle(color: color, fontSize: fontSize, fontWeight: FontWeightManger.regular);
  }
}