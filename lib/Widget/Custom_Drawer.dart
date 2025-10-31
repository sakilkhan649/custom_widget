import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(
      top: Get.height/25,),
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight:  Radius.circular(20),
          )
        ),
        child: Wrap(
          runSpacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text("Waris"),
                subtitle: Text("Version 0.1.1.4.8"),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.green,
                  child: Text("W"),
                ),
              ),
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              thickness: 1.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text("Home"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text("Products"),
                leading: Icon(Icons.production_quantity_limits),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text("Orders"),
                leading: Icon(Icons.shopping_bag),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text("Contract"),
                leading: Icon(Icons.help),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text("Log Out"),
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
