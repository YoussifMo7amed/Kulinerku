import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/helper/spacing.dart';
import 'package:kulinerku/core/routing/routers.dart';
import 'package:kulinerku/core/theming/styles.dart';
import 'package:kulinerku/core/widgets/app_text_button.dart';
import 'package:kulinerku/core/widgets/cusom_search_bar.dart';
import 'package:kulinerku/core/widgets/custom_appbar.dart';

class KulinerKuInfluencerVideoPage extends StatelessWidget {
  const KulinerKuInfluencerVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: "KulinerKu Influencer"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: [
        verticalSpace(20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const CustomSearchBar(),
        ),
        verticalSpace(25.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: AppTextButton(
              borderRadius: 10.0,
              buttonText: "Upload New Video",
              textStyle: TextStyles.font18WhiteSemiBold,
              onPressed: () {
                context.pushNamed(Routes.videouploadingpage);
              }),
        ),
        verticalSpace(20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            "Your Videos",
            style: TextStyles.font20LightBlackBold,
          ),
        ),
        verticalSpace(15.h),
        Image.asset("assets/images/youtubeimage.png"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
          child:  Row(
            children: [
              SvgPicture.asset(
                "assets/svgs/personlogo.svg",
                height: 30.h,
              ),
              horizontalSpace(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Tempat Nongkrong Paling Hits!",style: TextStyles.font20LightBlackBold,),
                  Text("Reviewer A",style: TextStyles.font14LightBlackMedium, ),
                ]
              )
            ],
          ),
        )
      ]),
    );
  }
}
