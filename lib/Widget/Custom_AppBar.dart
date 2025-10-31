import 'package:flutter/material.dart';
//Simple App Bar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? backgroundColor;
  final Color? titleColor;
  final bool centerTitle;
  final double elevation;
  final PreferredSizeWidget? bottom;
  final double toolbarHeight;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.backgroundColor,
    this.titleColor,
    this.centerTitle = true,
    this.elevation = 0,
    this.bottom,
    this.toolbarHeight = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      title: Text(
        title,
        style: TextStyle(
          color: titleColor ?? Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor ?? Colors.blue,
      centerTitle: centerTitle,
      elevation: elevation,
      bottom: bottom,
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      // ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(toolbarHeight + (bottom?.preferredSize.height ?? 0));
}

// // Modern AppBar with Avatar
// class ModernAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final String? subtitle;
//   final String? avatarUrl;
//   final VoidCallback? onAvatarTap;
//   final List<Widget>? actions;
//
//   const ModernAppBar({
//     super.key,
//     required this.title,
//     this.subtitle,
//     this.avatarUrl,
//     this.onAvatarTap,
//     this.actions,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: Colors.grey.withOpacity(0.1),
//         //     spreadRadius: 1,
//         //     blurRadius: 10,
//         //   ),
//         // ],
//       ),
//       child: SafeArea(
//         child: Row(
//           children: [
//             // Avatar
//             GestureDetector(
//               onTap: onAvatarTap,
//               child: CircleAvatar(
//                 radius: 20,
//                 backgroundColor: Colors.blue,
//                 backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
//                 child: avatarUrl == null
//                     ? const Icon(Icons.person, color: Colors.white)
//                     : null,
//               ),
//             ),
//             const SizedBox(width: 12),
//             // Title and Subtitle
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   if (subtitle != null)
//                     Text(
//                       subtitle!,
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//             // Actions
//             if (actions != null) ...actions!,
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(70);
// }
