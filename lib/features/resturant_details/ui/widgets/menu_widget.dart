import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_show_dialog.dart';
import '../../../../core/widgets/app_text_button.dart';

class MenuWidget extends StatelessWidget {
   MenuWidget({super.key, });
final List<String> menu = [
  'assets/images/image 8.png',
  'assets/images/image 8.png',
  'assets/images/image 8.png',
  'assets/images/image 8.png',
  'assets/images/image 8.png',
  'assets/images/image 8.png',
  'assets/images/image 8.png',
  'assets/images/image 8.png',
];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          "We Have Hot Offers For You !",
          style: TextStyles.font22LightBlackBold,
        ),
        verticalSpace(10.h),
          Expanded(
            child: SizedBox(
                height:350.h,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: menu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(menu[index]),
                  ),
                ),
              ),
          ),
             Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppTextButton(
              buttonIcon: SvgPicture.asset("assets/svgs/downloadicon.svg"),
                buttonText: "Download PDF",
                backgroundColor:Color(0XFFFF5E5E) ,
                textStyle: TextStyles.font14WhiteBold,
                onPressed: () {
                  customshowDialog(context: context,);
                }),
          )
      ]),
    );
  }
}
