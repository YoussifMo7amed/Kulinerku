import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/theming/colors.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  State<CustomButtomNavigationBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<CustomButtomNavigationBar> {
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 25,
            offset: const Offset(8, 20))
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(

            // backgroundColor: Colors.transparent,
            selectedItemColor: ColorsManager.maindeeporange,
            unselectedItemColor: ColorsManager.lightGray,
            currentIndex: myCurrentIndex,
            onTap: (index) {
              setState(() {
                myCurrentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.location_on_sharp), label: "Location"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}
