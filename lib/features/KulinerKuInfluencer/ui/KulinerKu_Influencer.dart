import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/helper/spacing.dart';
import 'package:kulinerku/core/routing/routers.dart';
import 'package:kulinerku/core/theming/styles.dart';
import 'package:kulinerku/core/widgets/app_text_button.dart';
import '../../../core/theming/colors.dart';
import 'widgets/custom_icon_and_text.dart';

class KulinerKuInfluencer extends StatelessWidget {
  const KulinerKuInfluencer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme:
            IconThemeData(color: ColorsManager.maindeeporange, size: 35.sp),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: Column(
          children: [
            verticalSpace(40.h),
            Text(
              "Join KulinerKu Influencer today!",
              style: TextStyles.font22LightBlackBold,
            ),
            verticalSpace(15.h),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: SvgPicture.asset("assets/svgs/onboarding3.svg"),
            ),
            verticalSpace(15.h),
            //CustomIconAndText
            const CustomIconAndText(
              icon: Icons.slow_motion_video_rounded,
              size: 45.0,
              text: "Upload Videos for review",
              color: Colors.blue,
            ),
            verticalSpace(15.h),
            //CustomIconAndText
            const CustomIconAndText(
              icon: Icons.verified,
              size: 45.0,
              text: "Get a verified badge on your profile",
              color: ColorsManager.maindeeporange,
            ),
            verticalSpace(15.h),
            //CustomIconAndText
            const CustomIconAndText(
              icon: Icons.restaurant,
              size: 40.0,
              text: "Get acknowledged by restaurants",
              color: Colors.redAccent,
            ),
            Expanded(child: verticalSpace(20.h)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 35.0),
              child: AppTextButton(
                  buttonText: "Join Now!",
                  textStyle: TextStyles.font14WhiteBold,
                  onPressed: () {
                    context.pushNamed(Routes.kulinerKuinfluencervideopage);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
