import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBottomNavBar extends StatelessWidget {
  const CurvedBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      height: 60,
      items: const <Widget>[
        Icon(Icons.home, size: 30),
        Icon(Icons.settings, size: 30),
      ],
      color: Colors.blue,
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      onTap: onTap,
    );
  }
}
