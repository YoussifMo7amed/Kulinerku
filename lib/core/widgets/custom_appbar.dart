// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';
PreferredSizeWidget customAppBar(
  {
   required final String text,
  }
){
 return  AppBar(
        backgroundColor: Colors.white,
        iconTheme:
            IconThemeData(color: ColorsManager.maindeeporange, size: 35.sp),
        elevation: 0.0,
        title: Text(text, style: TextStyles.font20LightBlackBold),
        centerTitle: true,
        bottom: PreferredSize(preferredSize: Size.fromHeight(1), child: Container(
          color: ColorsManager.lightGray,
          height: 1.h,
        ),),
      );

}