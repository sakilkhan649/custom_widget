import 'package:custom_widget/Widget/Custom_AppBar.dart';
import 'package:flutter/material.dart';

class CustomAppbarusing extends StatelessWidget {
  const CustomAppbarusing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomAppBar(
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ],
        leading: Icon(Icons.settings),
        title: "Hello Word"),

    );

  }
}
