import 'package:flutter/material.dart';

import '../../Widget/Custom_Drawer.dart';

class Heartscreen extends StatelessWidget {
  const Heartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Hello Word"),
        backgroundColor: Colors.green,
      ),
      drawer:CustomDrawer(),
    );
  }
}
