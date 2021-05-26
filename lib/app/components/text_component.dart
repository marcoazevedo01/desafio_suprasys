import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponent extends StatelessWidget {
  TextComponent({
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.letterSpacing,
  });
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double letterSpacing;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.robotoCondensed(
        fontSize: fontSize,
        color: color == null ? Colors.white : color,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }
}