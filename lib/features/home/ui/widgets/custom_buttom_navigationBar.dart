// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/theming/colors.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({
    Key? key,
    required this.myCurrentIndex,
    required this.onTap,
  }) : super(key: key);

  final int myCurrentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 25,
          offset: const Offset(8, 20),
        )
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          selectedItemColor: ColorsManager.maindeeporange,
          unselectedItemColor: ColorsManager.lightGray,
          currentIndex: myCurrentIndex,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on_sharp), label: "Location"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
