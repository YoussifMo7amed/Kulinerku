import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CustomGestureDetector extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  final String text;
  final Color iconcolor;

  const CustomGestureDetector({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.text,
    required this.iconcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 45.h,
        decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.lightBlack),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconcolor,
              size: 35,
            ),
            horizontalSpace(20.w),
            Text(
              text,
              style: TextStyles.font16LightBlackSemiBold,
            )
          ],
        ),
      ),
    );
  }
}
