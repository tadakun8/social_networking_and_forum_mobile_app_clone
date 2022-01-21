import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:social_networking_and_forum_mobile_app_clone/constants.dart';

class FloatingBottomBar extends StatefulWidget {
  const FloatingBottomBar({Key? key}) : super(key: key);

  @override
  _FloatingBottomBarState createState() => _FloatingBottomBarState();
}

class _FloatingBottomBarState extends State<FloatingBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Constants.textColor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          rippleColor: Colors.transparent,
          hoverColor: Colors.grey[300]!,
          gap: 8,
          activeColor: Colors.white,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: Colors.transparent,
          color: Colors.grey[600],
          tabs: const [
            GButton(
              icon: Icons.home,
              iconActiveColor: Colors.yellow,
              text: 'Home',
            ),
            GButton(
              icon: Icons.home,
              iconActiveColor: Colors.yellow,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              iconActiveColor: Colors.yellow,
              text: 'Search',
            ),
            GButton(
              icon: Icons.home,
              iconActiveColor: Colors.yellow,
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
