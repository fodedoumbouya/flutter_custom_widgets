import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;
  final TextAlign? textAlign;
  final bool withOverflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final Paint? foreground;
  final String? fontFamily;
  final FontStyle? fontStyle;
  final List<Shadow>? shadows;
  const CustomTextWidget(
    this.text, {
    super.key,
    this.color,
    this.fontWeight,
    this.size,
    this.textAlign,
    this.withOverflow = true,
    this.maxLines,
    this.decoration,
    this.foreground,
    this.fontFamily,
    this.fontStyle,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    TextOverflow? overflow = withOverflow ? TextOverflow.ellipsis : null;
    return AutoSizeText(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          overflow: overflow,
          decoration: decoration,
          fontStyle: fontStyle,
          foreground: foreground,
          shadows: shadows,
          fontFamily: fontFamily),
    );
  }
}
