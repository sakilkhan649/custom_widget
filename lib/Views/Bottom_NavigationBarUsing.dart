import 'package:custom_widget/Controllers/BottomNavigationControllerTwo.dart';
import 'package:custom_widget/Views/FoutScreen/Heartscreen.dart';
import 'package:custom_widget/Views/FoutScreen/Homescreen.dart';
import 'package:custom_widget/Views/FoutScreen/Profilescreen.dart';
import 'package:custom_widget/Views/FoutScreen/Shopscreen.dart';
import 'package:custom_widget/Widget/Custom_Bottom_NavigationBar_Two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final navcontroller=Get.put(NavController());

  final List<Widget> pages = const [
    Homescreen(),
    Heartscreen(),
    Profilescreen(),
    Shopscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: pages[navcontroller.selectedIndex.value],
      bottomNavigationBar: CustomBottomNav(
        icons: const [
          Icons.home,
          Icons.search,
          Icons.person,
          Icons.settings,
        ],
        labels: const [
          'Home',
          'Search',
          'Profile',
          'Settings',
        ],
        activeColor: Colors.blue,
        inactiveColor: Colors.yellow,
        backgroundColor: Colors.black,
        height: 60,
      ),
    ));
  }
}
