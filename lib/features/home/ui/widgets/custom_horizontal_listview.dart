import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/theming/colors.dart';
import 'package:kulinerku/core/theming/styles.dart';

import '../../../../core/helper/spacing.dart';

class CustomHorizontalListView extends StatefulWidget {
  final List<String> categories;

 const CustomHorizontalListView({super.key, required this.categories});

  @override
  CustomHorizontalListViewState createState() => CustomHorizontalListViewState();
}

class CustomHorizontalListViewState extends State<CustomHorizontalListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15, ),
          height: 43.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  height: 16.h,
                  width: 95.w,
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: selectedIndex == index ? Colors.orange : Colors.white,
                    border: selectedIndex != index
                        ? Border.all(color: ColorsManager.maindeeporange)
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      widget.categories[index],
                      style: selectedIndex == index
                          ? TextStyles.font14WhiteBold
                          : TextStyles.font14deepOrangeRegular,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        verticalSpace(12.h),
      ],
    );
  }
}
