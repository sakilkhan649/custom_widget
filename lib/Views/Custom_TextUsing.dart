import 'package:custom_widget/Widget/Custom_Text.dart';
import 'package:flutter/material.dart';

class CustomTextusing extends StatelessWidget {
  const CustomTextusing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomText(
            text: "Hello Sakil",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            isClickable: true,
            onTap: (){
              debugPrint("OnTap: Hello");
            },
          ),
        ],
      ),
    );
  }
}
