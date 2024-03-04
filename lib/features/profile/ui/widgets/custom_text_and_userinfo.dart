import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class CustomTextAndUserInfo extends StatelessWidget {
  const CustomTextAndUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              Text(
                "Profile",
                style: TextStyles.font32LightBlackBold,
              ),
              verticalSpace(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                    SvgPicture.asset(
                      "assets/svgs/appbarlogo.svg",
                      height: 150,
                    ),
                    Text(
                      "John Doe",
                      style: TextStyles.font20LightBlackSemiBold,
                    ),
                    Text(
                      "Normal User",
                      style: TextStyles.font12DeepOrangeBold,
                    ),
                    verticalSpace(10.h),
                    Text(
                      "081234567890",
                      style: TextStyles.font13lightblackRegular,
                    ),
                    Text(
                      "johndoe@mail.com",
                      style: TextStyles.font13lightblackRegular,
                    ),
                  ]),
                ],
              ),
            ],
          );
  }
}