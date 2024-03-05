import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              SvgPicture.asset(
                "assets/svgs/appbarlogo.svg",
                height: 150.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                heightFactor: 3.9.h,
                widthFactor: 3.9.w,
                child: SvgPicture.asset(
                  height: 35.h,
                  "assets/svgs/cameralogo.svg",
                ),
              ),
            ]),
          ],
        );
  }
}