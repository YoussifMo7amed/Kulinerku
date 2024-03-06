import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 45.h,
          decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                child: Icon(Icons.search, color: ColorsManager.lightGray),
              ),
               Expanded(
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 3.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: ColorsManager.lightGray),
                    ),
                    style: TextStyle(color: ColorsManager.lightGray),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}