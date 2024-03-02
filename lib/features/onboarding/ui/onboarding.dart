// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/features/onboarding/ui/widgets/restaurant_image_and_text.dart';
import '../../../core/helper/spacing.dart';

import 'widgets/smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  var controler = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            PageViewBuilder(controler: controler, isLast: isLast),
            verticalSpace(20),
           
            SmoothIndicetor(
              controler: controler,
              length: 3,
            ),
            verticalSpace(20.h)
          ],
        ),
      )),
    );
  }
}
