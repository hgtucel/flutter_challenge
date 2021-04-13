import 'package:challenge_app/presentation/constants.dart';
import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onTap;
  final bool isActive;
  BottomNavItem({this.title, this.icon, this.onTap, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            color: isActive ? submitButtonColor : labelTextColor,
          ),
          Text(
            title,
            style:
                TextStyle(color: isActive ? submitButtonColor : labelTextColor),
          )
        ],
      ),
    );
  }
}
