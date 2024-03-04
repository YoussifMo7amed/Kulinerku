// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theming/styles.dart';
PreferredSizeWidget customHomeAppBar(){
 return  AppBar(
scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 50.w,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/svgs/appbarlogo.svg",
          ),
        ),
        titleSpacing: 0,
        title: Text("Hello! John Doe",style: TextStyles.font20LightBlackBold,),
        actions: [ 
          IconButton(
            icon:SvgPicture.asset("assets/svgs/appbaractionicon.svg") ,
            onPressed: () {
              
            },
          )
        ],
      );

}