import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import '../helper/spacing.dart';
import '../theming/styles.dart';
import 'app_text_button.dart';

Future<T?> customshowDialog<T> ({
  required BuildContext context,
}) {
  return showDialog<T>(
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
}