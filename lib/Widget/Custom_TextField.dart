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
