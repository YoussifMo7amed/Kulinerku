import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/theming/styles.dart';
import 'package:kulinerku/core/widgets/app_text_button.dart';
import 'package:kulinerku/features/profile/ui/widgets/custom_edit_profile_appbar.dart';
import '../../../../core/helper/spacing.dart';
import 'custom_edit_profile_text_and_textformfield.dart';
import 'edit_profile_image.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customEditProfileAppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          verticalSpace(30.h),
          const CustomProfileImage(),
          verticalSpace(30.h),
          const CustomTextAndTextFormField(
              text: 'Full Name', hintText: 'John Doe'),
          const CustomTextAndTextFormField(
              text: 'Phone Number', hintText: '081234567890'),
          const CustomTextAndTextFormField(
              text: 'Email', hintText: 'info@abc.com'),
          CustomTextAndTextFormField(
            text: 'Addrees',
            hintText: 'Jalan ABC no 1, Kelapa Gading, Jakarta',
            height: 20.h,
          ),
          verticalSpace(20.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppTextButton(
                buttonText: "Update Data",
                textStyle: TextStyles.font14WhiteBold,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: SizedBox(
                        height: 218.h,
                        child: Column(
                          children: [
                            SizedBox(
                                height: 100.h,
                                child: Image.asset(
                                  "assets/images/showdialogimage.png",
                                )),
                            Text(
                              "Success!",
                              style: TextStyles.font20LightBlackBold,
                            ),
                            Text(
                              "Your Data has been saved",
                              style: TextStyles.font13lightblackRegular,
                            ),
                            Text(
                              "(Your data is being reviewed)",
                              style: TextStyles.font13lightblackRegular,
                            ),
                            verticalSpace(10.h),
                            AppTextButton(
                                buttonHeight: 40.h,
                                buttonWidth: 80.w,
                                verticalPadding: 0,
                                horizontalPadding: 0,
                                buttonText: "Ok",
                                textStyle: TextStyles.font14WhiteBold,
                                onPressed: () {
                                  context.pop();
                                })
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
