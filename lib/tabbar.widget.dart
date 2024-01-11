import 'package:flutter/material.dart';

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.tabBar);

  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(3),
    margin: const EdgeInsets.only(left: 8, right: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.black.withOpacity(0.3)
    ),
    child: tabBar,
  );
}