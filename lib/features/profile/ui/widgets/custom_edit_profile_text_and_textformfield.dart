import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class CustomTextAndTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final double? height;
  const CustomTextAndTextFormField(
      {super.key,
      required this.text,
      required this.hintText,
       this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          textAlign: TextAlign.start,
          text,
          style: TextStyles.font13lightblacksemiBold,
        ),
        verticalSpace(10.h),
        AppTextFormField(
          hintText: hintText,
          backgroundColor: Colors.white,
          hintStyle: TextStyles.font13lightblackRegular.copyWith(
            
            height: 1.h
          ),
          height: height,
        ),
      ]),
    );
  }
}
