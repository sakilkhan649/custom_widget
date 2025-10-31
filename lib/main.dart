import 'package:custom_widget/Views/Bottom_NavigationBarUsing.dart';
import 'package:custom_widget/Views/Custom_AppBarUsing.dart';
import 'package:custom_widget/Views/Custom_DrawerUsing.dart';
import 'package:custom_widget/Views/Custom_TextFieldUsing.dart';
import 'package:custom_widget/Views/Custom_ButtonUsing.dart';
import 'package:custom_widget/Views/Custom_TextUsing.dart';
import 'package:custom_widget/Widget/Custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

