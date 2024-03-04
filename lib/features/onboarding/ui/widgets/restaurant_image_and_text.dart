// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/helper/spacing.dart';
import 'package:kulinerku/core/routing/routers.dart';
import 'package:kulinerku/core/theming/colors.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../data/model/onboarding_model.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kulinerku/core/theming/styles.dart';

class PageViewBuilder extends StatefulWidget {
  PageViewBuilder({super.key, required this.controler, required this.isLast});

  var controler = PageController();
  bool isLast = false;

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/svgs/onboarding1.svg',
      title: 'Find restaurant near you',
    ),
    BoardingModel(
      image: 'assets/svgs/onboarding2.svg',
      title: 'Give quality reviews',
    ),
    BoardingModel(
      image: 'assets/svgs/onboarding3.svg',
      title: 'Be an influencer!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 550.h,
          width: 400.w,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            onPageChanged: (int value) {
              if (value == boarding.length - 1) {
                setState(() {
                  widget.isLast = true;
                });
              } else {
                setState(() {
                  widget.isLast = false;
                });
              }
            },
            controller: widget.controler,
            itemBuilder: (context, index) => onBoardingSCreens(boarding[index]),
            itemCount: boarding.length,
          ),
        ),
        verticalSpace(30.h),
        AppTextButton(
            borderRadius: !widget.isLast ? 0 : 20,
            backgroundColor:!widget.isLast ? Colors.white:ColorsManager.maindeeporange,
            buttonHeight: !widget.isLast ?60.h:50.h,
            buttonWidth:!widget.isLast ? 700.w:170.w,
            buttonText:!widget.isLast ? "skip":"Let’s Start!",
            textStyle:!widget.isLast ? TextStyles.font16DeepOrangeExtraBold: TextStyles.font18WhiteSemiBold,
            onPressed: () {
             !widget.isLast ? widget.controler.nextPage(
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.fastLinearToSlowEaseIn):context.pushNamedAndRemoveUntil(Routes.homescreen, predicate: (_) => false);
            }),
      ],
    );
  }
}

Widget onBoardingSCreens(BoardingModel model) =>
    Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      verticalSpace(150.h),
      SvgPicture.asset(
        '${model.image}',
        height: 230.h,
      ),
      verticalSpace(60.h),
      Text('${model.title}', style: TextStyles.font24LightBlackBold),
    ]);
