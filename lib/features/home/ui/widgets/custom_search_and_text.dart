import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/theming/colors.dart';
import 'package:kulinerku/core/theming/styles.dart';

import '../../../../core/helper/spacing.dart';

class CustomSearchBarAndText extends StatelessWidget {
  const CustomSearchBarAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 45.h,
          decoration: BoxDecoration(
            color:const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child:const Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(   vertical:  3.0,horizontal: 10.0),
                child: Icon(Icons.search, color:ColorsManager.lightGray),
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
        ),
        verticalSpace(15.h),
        Text("What do you want to eat?",style: TextStyles.font22LightBlackBold,),
     
      ],
    );
  }
}