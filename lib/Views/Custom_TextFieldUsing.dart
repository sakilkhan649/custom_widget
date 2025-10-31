import 'package:custom_widget/Controllers/TextFieldController.dart';
import 'package:custom_widget/Widget/Custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldUsing extends StatelessWidget {
  TextFieldUsing({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final PasswordController controller = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Customtextfield(
              textInputType: TextInputType.text,
              controller: nameController,
              labelText: "Name",
              hintText: "Name",
              prefixIcon: Icons.person,
              obscureText: false,
             // inputBorder: InputBorder.none,
            ),
            const SizedBox(height: 10),
            Customtextfield(
              textInputType: TextInputType.emailAddress,
              controller: emailController,
              labelText: "Email",
              hintText: "Email",
              prefixIcon: Icons.email,
              obscureText: false,
            ),
            const SizedBox(height: 10),
            Obx(
              () => Customtextfield(
                textInputType: TextInputType.text,
                controller: passwordController,
                labelText: "Password",
                hintText: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.pass.value = !controller.pass.value;
                  },
                  icon: Icon(
                    controller.pass.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                obscureText: controller.pass.value,
              ),
            ),
            SizedBox(height: 10,),
            Customtextfield(
              textInputType: TextInputType.text,
              controller: nameController,
              hintText: "Search...",
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              obscureText: false,
              inputBorder: InputBorder.none,
            ),
          ],
        ),
      ),
    );
  }
}
