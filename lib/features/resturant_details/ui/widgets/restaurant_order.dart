import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
class RestaurantOrder extends StatelessWidget {
  const RestaurantOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Row(children: [
          SizedBox(
              height: 80.h,
              width: 80.w,
              child: Image.asset(
                "assets/images/order1.png",
                fit: BoxFit.cover,
              )),
          horizontalSpace(10.w),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pepperoni Pizza",
                    style: TextStyles.font16LightBlackSemiBold
                        .copyWith(fontSize: 18.sp)),
                Text("Made with pepperoni",
                    style: TextStyles.font13lightblackRegular),
                Text("Rp. 20.000", style: TextStyles.font13lightblackRegular),
              ]),
          horizontalSpace(16.w),
          AppTextButton(
              horizontalPadding: 0,
              verticalPadding: 0,
              borderRadius: 10,
              backgroundColor: ColorsManager.maindeeporange,
              buttonHeight: 30.h,
              buttonWidth: 80.w,
              buttonText: "order",
              textStyle:
                  TextStyles.font18WhiteSemiBold.copyWith(fontSize: 14.0),
              onPressed: () {}),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          horizontalSpace(20.w),
            Container(
                      height: 1.h,
                      width: 250.w,
                      color: Colors.grey,
                    ),
          ],
        ),
      ]
    );
  }
}