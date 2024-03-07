import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/helper/spacing.dart';
import 'package:kulinerku/features/resturant_details/ui/widgets/menu_widget.dart';
import 'package:kulinerku/features/resturant_details/ui/widgets/order_widget.dart';
import 'package:kulinerku/features/resturant_details/ui/widgets/review_widget.dart';
import 'package:kulinerku/features/resturant_details/ui/widgets/vidoe_widget.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/custom_tapbar.dart';
import 'widgets/description_widget.dart';

class ResturantDetails extends StatefulWidget {
  const ResturantDetails({super.key});

  @override
  State<ResturantDetails> createState() => _ResturantDetailsState();
}

int selectedIndex = 0;
List<String> categories = ['Description', 'Review', 'Video', 'Menu', 'Order'];

class _ResturantDetailsState extends State<ResturantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 210.h,
              child: Stack(
                children: [
                  SizedBox(
                    height: 250.h,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/image1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon:const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "ABC Pizzeria",
                            style: TextStyles.font18WhiteSemiBold
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            horizontalSpace(8.w),
                            Text(
                              "Jalan ABC no 1, Kelapa Gading, Jakarta\n081234567890",
                              style: TextStyles.font13lightblackRegular
                                  .copyWith(color: Colors.white),
                            ),
                            horizontalSpace(15.w),
                            AppTextButton(
                                horizontalPadding: 0,
                                verticalPadding: 0,
                                borderRadius: 10,
                                backgroundColor: ColorsManager.maindeeporange,
                                buttonHeight: 30.h,
                                buttonWidth: 100.w,
                                buttonText: "Direction",
                                textStyle: TextStyles.font18WhiteSemiBold
                                    .copyWith(fontSize: 14.0),
                                onPressed: () {}),
                            horizontalSpace(10.w),
                          ],
                        ),
                        verticalSpace(10.h)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(10.h),
            SizedBox(
              height: 600.h,
              child: CustomTapBar(
                items: categories,
                screens: [
                  DescriptionWidget(),
                  const ReviewWidget(),
                  const VideoWidget(),
                  MenuWidget(),
                  const OrderWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
