import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.grey[400],
        activeColor: Colors.grey.shade800,
        tabActiveBorder: Border.all(
          color: Colors.white,
        ),
        tabBackgroundColor: Colors.orange.shade500,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 10,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            iconActiveColor: Colors.white,
            textColor: Colors.white,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
            iconActiveColor: Colors.white,
            textColor: Colors.white,
          ),
        ],
    );
  }
}
