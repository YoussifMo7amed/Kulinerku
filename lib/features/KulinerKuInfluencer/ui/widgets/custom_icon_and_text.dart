import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class CustomIconAndText extends StatelessWidget {
  final IconData? icon;
  final double? size;
  final String text;
  final Color? color;
  const CustomIconAndText(
      {super.key,
      required this.icon,
      required this.size,
      required this.text,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: size,
          color: color,
        ),
        horizontalSpace(10.w),
        Text(
          text,
          style: TextStyles.font14LightBlackMedium,
        )
      ],
    );
  }
}
