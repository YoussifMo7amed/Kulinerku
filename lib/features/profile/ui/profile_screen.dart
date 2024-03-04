import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/routing/routers.dart';
import 'package:kulinerku/core/theming/colors.dart';
import '../../../core/helper/spacing.dart';
import 'widgets/custom_gesture_detector.dart';
import 'widgets/custom_text_and_userinfo.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CustomTextAndUserInfo(),
          verticalSpace(20.h),
          Container(
            width: double.infinity,
            height: 1,
            color: ColorsManager.lightBlack,
          ),
          verticalSpace(20.h),
          CustomGestureDetector(
            icon: Icons.edit,
            iconcolor: ColorsManager.maindeeporange,
            onTap: () {
              context.pushNamed(Routes.editProfile);
            },
            text: "Edit Profile",
          ),
          verticalSpace(20.h),
          CustomGestureDetector(
            icon: Icons.slow_motion_video,
            iconcolor: Colors.blue,
            onTap: () {},
            text: "KulinerKu Influencer",
          ),
          verticalSpace(20.h),
          CustomGestureDetector(
            icon: Icons.logout,
            iconcolor: Colors.redAccent,
            onTap: () {},
            text: "Log Out",
          ),
          verticalSpace(20.h),
        ]),
      ))
    ]);
  }
}
