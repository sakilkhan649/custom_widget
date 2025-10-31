// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// // Drawer Item Model
// class DrawerItemModel {
//   final IconData icon;
//   final String title;
//   final VoidCallback onTap;
//   final Color? textColor;
//   final Color? iconColor;
//
//   DrawerItemModel({
//     required this.icon,
//     required this.title,
//     required this.onTap,
//     this.textColor,
//     this.iconColor,
//   });
// }
//
// // Reusable Custom Drawer
// class CustomDrawer extends StatelessWidget {
//   final String appName;
//   final String appVersion;
//   final String userInitial;
//   final Color backgroundColor;
//   final Color textColor;
//   final List<DrawerItemModel> menuItems;
//   final VoidCallback? onLogout;
//   final Widget? headerWidget;
//   final bool showLogout;
//
//   const CustomDrawer({
//     super.key,
//     required this.appName,
//     required this.appVersion,
//     required this.userInitial,
//     required this.menuItems,
//     this.backgroundColor = Colors.green,
//     this.textColor = Colors.white,
//     this.onLogout,
//     this.headerWidget,
//     this.showLogout = true,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: Get.height / 25),
//       child: Drawer(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(20),
//             bottomRight: Radius.circular(20),
//           ),
//         ),
//         backgroundColor: backgroundColor,
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             // Header Section
//             headerWidget ?? _buildDefaultHeader(),
//
//             const Divider(
//               indent: 10,
//               endIndent: 10,
//               thickness: 1.5,
//               color: Colors.white24,
//             ),
//
//             // Menu Items
//             ...menuItems.map((item) => _buildDrawerItem(
//               icon: item.icon,
//               title: item.title,
//               onTap: item.onTap,
//               textColor: item.textColor,
//               iconColor: item.iconColor,
//             )),
//
//             if (showLogout) ...[
//               const SizedBox(height: 20),
//               _buildDrawerItem(
//                 icon: Icons.logout,
//                 title: "Log Out",
//                 textColor: textColor,
//                 iconColor: textColor,
//                 onTap: () => _showLogoutDialog(),
//               ),
//             ],
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDefaultHeader() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//       child: ListTile(
//         titleAlignment: ListTileTitleAlignment.center,
//         title: Text(
//           appName,
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: textColor,
//           ),
//         ),
//         subtitle: Text(
//           "Version $appVersion",
//           style: TextStyle(
//             color: textColor.withOpacity(0.7),
//             fontSize: 12,
//           ),
//         ),
//         leading: CircleAvatar(
//           radius: 22,
//           backgroundColor: textColor,
//           child: Text(
//             userInitial,
//             style: TextStyle(
//               color: backgroundColor,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDrawerItem({
//     required IconData icon,
//     required String title,
//     required VoidCallback onTap,
//     Color? textColor,
//     Color? iconColor,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
//       child: ListTile(
//         titleAlignment: ListTileTitleAlignment.center,
//         onTap: onTap,
//         title: Text(
//           title,
//           style: TextStyle(
//             color: textColor ?? this.textColor,
//             fontSize: 16,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         leading: Icon(
//           icon,
//           color: iconColor ?? this.textColor,
//           size: 24,
//         ),
//         trailing: Icon(
//           Icons.arrow_forward_ios,
//           color: (iconColor ?? this.textColor).withOpacity(0.7),
//           size: 16,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         hoverColor: Colors.white12,
//         splashColor: Colors.white24,
//       ),
//     );
//   }
//
//   void _showLogoutDialog() {
//     Get.dialog(
//       AlertDialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         title: const Text(
//           'Log Out',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         content: const Text('Are you sure you want to log out?'),
//         actions: [
//           TextButton(
//             onPressed: () => Get.back(),
//             child: const Text(
//               'Cancel',
//               style: TextStyle(color: Colors.grey),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Get.back(); // Close dialog
//               Get.back(); // Close drawer
//
//               if (onLogout != null) {
//                 onLogout!();
//               } else {
//                 Get.snackbar(
//                   'Success',
//                   'Logged out successfully',
//                   snackPosition: SnackPosition.BOTTOM,
//                   backgroundColor: backgroundColor,
//                   colorText: textColor,
//                   duration: const Duration(seconds: 2),
//                 );
//               }
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.red,
//               foregroundColor: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             child: const Text('Log Out'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // ==================== USAGE EXAMPLE ====================
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reusable Drawer Demo'),
//       ),
//       drawer: CustomDrawer(
//         appName: "Waris",
//         appVersion: "0.1.1.4.8",
//         userInitial: "W",
//         backgroundColor: Colors.green,
//         textColor: Colors.white,
//         menuItems: [
//           DrawerItemModel(
//             icon: Icons.home,
//             title: "Home",
//             onTap: () {
//               Get.back();
//               Get.snackbar('Navigation', 'Home clicked');
//             },
//           ),
//           DrawerItemModel(
//             icon: Icons.production_quantity_limits,
//             title: "Products",
//             onTap: () {
//               Get.back();
//               Get.snackbar('Navigation', 'Products clicked');
//             },
//           ),
//           DrawerItemModel(
//             icon: Icons.shopping_bag,
//             title: "Orders",
//             onTap: () {
//               Get.back();
//               Get.snackbar('Navigation', 'Orders clicked');
//             },
//           ),
//           DrawerItemModel(
//             icon: Icons.contact_page,
//             title: "Contact",
//             onTap: () {
//               Get.back();
//               Get.snackbar('Navigation', 'Contact clicked');
//             },
//           ),
//         ],
//         onLogout: () {
//           // Your custom logout logic
//           Get.snackbar(
//             'Logged Out',
//             'You have been logged out successfully',
//             snackPosition: SnackPosition.BOTTOM,
//           );
//         },
//       ),
//       body: const Center(
//         child: Text('Swipe from left to open drawer'),
//       ),
//     );
//   }
// }
//
// // Different color example
// class AlternativeDrawer extends StatelessWidget {
//   const AlternativeDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomDrawer(
//       appName: "MyApp",
//       appVersion: "1.0.0",
//       userInitial: "M",
//       backgroundColor: Colors.blue.shade800,
//       textColor: Colors.white,
//       menuItems: [
//         DrawerItemModel(
//           icon: Icons.dashboard,
//           title: "Dashboard",
//           onTap: () => Get.back(),
//         ),
//         DrawerItemModel(
//           icon: Icons.settings,
//           title: "Settings",
//           onTap: () => Get.back(),
//         ),
//       ],
//     );
//   }
// }