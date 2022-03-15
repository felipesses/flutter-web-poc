import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class AppText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final Color color;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final double lineHeight;
  final double fontSize;

  const AppText(
    this.text, {
    Key? key,
    this.fontFamily = 'Roboto',
    this.color = const Color(0XFF000000),
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.lineHeight = 1.0,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextRenderer(
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          height: lineHeight,
          fontFamily: fontFamily,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
