import 'package:custom_widget/Controllers/ClickColor_ChangeController.dart';
import 'package:custom_widget/Widget/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonusing extends StatelessWidget {
  CustomButtonusing({super.key});

  final ColorChange controller = Get.put(ColorChange());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "Sign Up",
              textColor: Colors.white,
              backgroundColor: Colors.green,
              borderColor: Colors.green,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: "Sign Up",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: "Sign In",
              textColor: Colors.white,
              backgroundColor: Colors.red,
              borderColor: Colors.red,
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: "Sign In",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderColor: Colors.red,
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  height: 70,
                  width: 70,
                  text: "Yes",
                  style: TextStyle(fontSize: 12),
                  textColor: controller.userColor.value == 0
                      ? Colors.white
                      : Colors.black,
                  borderColor: Colors.black,
                  onPressed: () {
                    controller.userColor.value = 0;
                  },
                  backgroundColor: controller.userColor.value == 0
                      ? Colors.green
                      : Colors.white,
                ),
                const SizedBox(width: 10),
                CustomButton(
                  height: 70,
                  width: 70,
                  text: "No",
                  style: TextStyle(fontSize: 12),
                  textColor: controller.userColor.value == 1
                      ? Colors.white
                      : Colors.black,
                  borderColor: Colors.black,
                  onPressed: () {
                    controller.userColor.value = 1;
                  },
                  backgroundColor: controller.userColor.value == 1
                      ? Colors.red
                      : Colors.white,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}