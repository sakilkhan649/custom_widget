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



// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_common/get_reset.dart';
// import 'package:get/get_utils/get_utils.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../../Utils/AppColors/app_colors.dart';
//
// class CustomText extends StatelessWidget {
//   const CustomText({
//     super.key,
//     this.maxLines,
//     this.textAlign = TextAlign.center,
//     this.left = 0,
//     this.right = 0,
//     this.top = 0,
//     this.bottom = 0,
//     this.fontSize = 12,
//     this.fontWeight = FontWeight.w400,
//     this.color = AppColors.black700,
//     required this.text,
//     this.overflow = TextOverflow.ellipsis,
//     this.decoration,
//   });
//
//   final double left;
//   final double right;
//   final double top;
//   final double bottom;
//   final double fontSize;
//   final FontWeight fontWeight;
//   final Color color;
//   final String text;
//   final TextAlign textAlign;
//   final int? maxLines;
//   final TextOverflow overflow;
//   final TextDecoration? decoration;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//       EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
//       child: Text(
//         textAlign: textAlign,
//         text.tr,
//         maxLines: maxLines,
//         overflow: overflow,
//         style:GoogleFonts.poppins(
//           fontSize: fontSize.w,
//           fontWeight: fontWeight,
//           color:color,
//           decoration:decoration,
//         ),
//       ),
//     );
//   }
// }