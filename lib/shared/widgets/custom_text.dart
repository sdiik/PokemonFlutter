import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum TextSize { small, medium, large, extraLarge }

class CustomText extends StatelessWidget {
  final String text;
  final TextSize textSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const CustomText({
    Key? key,
    required this.text,
    required this.textSize,
    required this.color,
    required this.fontWeight,
    required this.textAlign
  }) : super(key: key);

  double _getFontSize() {
    switch (textSize) {
      case TextSize.small:
        return 10.0;
      case TextSize.medium:
        return 12.0;
      case TextSize.large:
        return 14.0;
      case TextSize.extraLarge:
        return 16.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.breeSerif(
        fontSize: _getFontSize(),
        color: color,
        fontWeight: fontWeight
      ),
    );
  }
}