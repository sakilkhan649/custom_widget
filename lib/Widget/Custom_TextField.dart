import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {

  final TextEditingController controller;
  final String? labelText;
  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType textInputType;
  final InputBorder? inputBorder;

  Customtextfield({
    super.key,
    this.inputBorder,
    required this.controller,
    this.labelText,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    required this.textInputType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        textAlign: TextAlign.start,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey),
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon,
          // prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.green),
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          // ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../Utils/AppColors/app_colors.dart' show AppColors;
//
// class CustomTextField extends StatefulWidget{
//   static void _defaultOnTap() {}
//   const CustomTextField({
//     this.textEditingController,
//     this.focusNode,
//     this.keyboardType = TextInputType.text,
//     this.textInputAction = TextInputAction.next,
//     this.cursorColor = AppColors.black700,
//     this.inputTextStyle,
//     this.textAlignVertical = TextAlignVertical.center,
//     this.textAlign = TextAlign.start,
//     this.maxLines = 1,
//     this.validator,
//     this.hintText,
//     this.hintStyle = const TextStyle(color: AppColors.gray500),
//     this.fillColor = Colors.transparent,
//     this.suffixIcon,
//     this.onChanged,
//     this.onSubmit,
//     this.suffixIconColor,
//     this.borderRadius = 8,
//     this.fieldBorderColor = AppColors.gray700,
//     this.isPassword = false,
//     this.readOnly = false,
//     super.key,
//     this.onTapClick = _defaultOnTap,
//     this.isPrefixIcon = false,
//     this.focusBorderColor = AppColors.gray500,
//     this.height = 48,
//     this.maxLength,
//     this.labelText = '',
//   });
//
//   final TextEditingController? textEditingController;
//   final FocusNode? focusNode;
//   final TextInputType keyboardType;
//   final TextInputAction textInputAction;
//   final Color cursorColor;
//   final TextStyle? inputTextStyle;
//   final TextAlignVertical? textAlignVertical;
//   final TextAlign textAlign;
//   final int? maxLines;
//   final int? maxLength;
//
//
//   final FormFieldValidator? validator;
//   final String? hintText;
//   final String labelText;
//   final TextStyle? hintStyle;
//   final Color? fillColor;
//   final Color? suffixIconColor;
//   final Widget? suffixIcon;
//   final double borderRadius;
//   final Color fieldBorderColor;
//   final Color focusBorderColor;
//   final void Function(String)? onChanged;
//   // final  void Function(String)? onSubmited;
//   final  Function(String)? onSubmit;
//   final bool isPassword;
//   final bool isPrefixIcon;
//   final VoidCallback onTapClick;
//   final bool readOnly;
//   final double height;
//
//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }
//
// class _CustomTextFieldState extends State<CustomTextField> {
//   bool obscureText = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         padding: EdgeInsets.all(0.r),
//         child: TextFormField(
//           onTap: () {
//             widget.onTapClick();
//           },
//           onFieldSubmitted: (value) {
//             if (widget.onSubmit != null) {
//               widget.onSubmit!(value);
//             }
//           },
//           // onFieldSubmitted:(value){
//           //   widget.onSubmited!(value);
//           // },
//           onChanged: widget.onChanged,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           readOnly: widget.readOnly,
//           controller: widget.textEditingController,
//           focusNode: widget.focusNode,
//           keyboardType: widget.keyboardType,
//           textInputAction: widget.textInputAction,
//           cursorColor: widget.cursorColor,
//           style: widget.inputTextStyle,
//           maxLines: widget.maxLines,
//           maxLength: widget.maxLength,
//           obscureText: widget.isPassword ? obscureText : false,
//           validator: widget.validator,
//           decoration: InputDecoration(
//             isDense: true,
//             errorMaxLines: 2,
//             hintText: widget.hintText,
//             hintStyle: widget
//                 .hintStyle, // TextStyle(color: AppColors.blueLightActive),
//             fillColor: widget.fillColor,
//             filled: true,
//
//             prefixIcon: widget.isPrefixIcon
//                 ? Padding(
//               padding: const EdgeInsetsDirectional.symmetric(
//                   horizontal: 0, vertical: 0),
//               child: Icon(
//                 Icons.search,
//                 color: AppColors.black200,
//                 size: 24.h,
//               ),
//             )
//                 : null,
//             suffixIcon: widget.isPassword
//                 ? GestureDetector(
//                 onTap: toggle,
//                 child: Padding(
//                   padding: const EdgeInsetsDirectional.symmetric(
//                       horizontal: 16, vertical: 14),
//                   child: obscureText
//                       ? const Icon(
//                     Icons.visibility_off_outlined,
//                     color: AppColors.black200,
//                   )
//                       : const Icon(Icons.visibility_outlined,
//                       color: AppColors.black200),
//                 ))
//                 : widget.suffixIcon,
//             suffixIconColor: widget.suffixIconColor,
//
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(widget.borderRadius),
//                 borderSide:
//                 BorderSide(color: widget.fieldBorderColor, width: 0),
//                 gapPadding: 0),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(widget.borderRadius),
//                 borderSide:
//                 BorderSide(color: widget.focusBorderColor, width: 0),
//                 gapPadding: 0),
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(widget.borderRadius),
//                 borderSide:
//                 BorderSide(color: widget.fieldBorderColor, width: 0),
//                 gapPadding: 0),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void toggle() {
//     setState(() {
//       obscureText = !obscureText;
//     });
//   }
// }