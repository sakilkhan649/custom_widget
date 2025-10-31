import 'package:custom_widget/Widget/Custom_AppBar.dart';
import 'package:custom_widget/Widget/Custom_Back_Button.dart';
import 'package:custom_widget/Widget/Custom_Image.dart';
import 'package:flutter/material.dart';

class CustomBackbuttonusing extends StatelessWidget {
  const CustomBackbuttonusing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomAppBar(
      centerTitle: false,
      leading: CustomBackButton(),
        title: "Hello"),

    );
  }
}
