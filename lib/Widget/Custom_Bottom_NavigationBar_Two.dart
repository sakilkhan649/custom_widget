import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/BottomNavigationControllerTwo.dart';

class CustomBottomNav extends StatelessWidget {
  final List<IconData> icons;
  final List<String>? labels;
  final Color activeColor;
  final Color inactiveColor;
  final Color backgroundColor;
  final double height;
  final double iconSize;

  const CustomBottomNav({
    super.key,
    required this.icons,
    this.labels,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.backgroundColor = Colors.white,
    this.height = 60,
    this.iconSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    final navcontroller = Get.put(NavController());

    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            bool isSelected = navcontroller.selectedIndex.value == index;

            return GestureDetector(
              onTap: () => navcontroller.changeIndex(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.green : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[index],
                      size: iconSize,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                    if (labels != null)
                      Text(
                        labels![index],
                        style: TextStyle(
                          fontSize: 12,
                          color: isSelected ? Colors.white : Colors.black,
                          // fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
