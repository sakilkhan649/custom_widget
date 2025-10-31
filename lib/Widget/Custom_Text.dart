import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String text;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final double? letterSpacing;
  final double? wordSpacing;
  final int? maxLines;
  final bool? softWrap;
  final TextOverflow? textOverflow;
  final TextDirection? textDirection;
  final String? fontFamily;
  final bool isClickable;
  final VoidCallback? onTap;

  const CustomText({
    super.key,
    required this.text,
    this.textAlign,
    this.textStyle,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textDecoration,
    this.letterSpacing,
    this.wordSpacing,
    this.maxLines,
    this.softWrap,
    this.textOverflow,
    this.textDirection,
    this.fontFamily,
    this.isClickable = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isClickable ? onTap : null,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.start,
        maxLines: maxLines,
        softWrap: softWrap ?? true,
        overflow: textOverflow ?? TextOverflow.ellipsis,
        textDirection: textDirection,
        style: textStyle?.copyWith(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: textDecoration,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          fontFamily: fontFamily,
        ) ?? TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.normal,
          decoration: textDecoration ?? TextDecoration.none,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}

