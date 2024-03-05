import 'package:kulinerku/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppTextFormField extends StatelessWidget {
 final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final double ?height;
  const  AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor, this.height,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintMaxLines: 5,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical:height?? 10.h),
        focusedBorder:focusedBorder?? OutlineInputBorder(
              borderSide: const BorderSide(
                
                color: ColorsManager.maindeeporange,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
        enabledBorder:enabledBorder?? OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hintText,
            hintStyle:hintStyle ,
            suffixIcon: suffixIcon,
            fillColor: backgroundColor??ColorsManager.lightGray,
            filled: true
      ),
      obscureText: isObscureText??false,
      style:inputTextStyle?? TextStyles.font13lightblackRegular,
    );
  }
}