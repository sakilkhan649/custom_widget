import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Custom_Text.dart';

class CustomBackButton extends StatelessWidget {
  CustomBackButton({super.key,this.title='Back'});
  String title="Back";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Row(
          children: [

            //SvgPicture.asset(AppIcons.customBackArrow),
            Icon(Icons.arrow_back),

            CustomText(text:title??"",fontWeight: FontWeight.normal,fontSize: 10,),

          ],
        ),
      ),
    );
  }
}