import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kulinerku/core/theming/colors.dart';
import 'package:kulinerku/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle fonts = GoogleFonts.inter();

  static TextStyle font24LightBlackBold = fonts.copyWith(
      fontSize: 24,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.lightBlack);

  static TextStyle font16DeepOrangeExtraBold = fonts.copyWith(
      fontSize: 16,
      fontWeight: FontWeightHelper.extraBold,
      color: ColorsManager.maindeeporange);

        static TextStyle font12DeepOrangeBold = fonts.copyWith(
      fontSize: 12,
      fontWeight: FontWeightHelper.extraBold,
      color: ColorsManager.maindeeporange);

  static TextStyle font18WhiteSemiBold = fonts.copyWith(
    fontSize: 18,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font20LightBlackBold = fonts.copyWith(
      fontSize: 20,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.lightBlack);
  static TextStyle font22LightBlackBold = fonts.copyWith(
      fontSize: 22,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.lightBlack);
       static TextStyle font14WhiteBold = fonts.copyWith(
    fontSize: 14,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
    static TextStyle font14deepOrangeRegular = fonts.copyWith(
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.maindeeporange,
  );
    static TextStyle font20LightBlackSemiBold = fonts.copyWith(
    fontSize: 20,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.lightBlack,
  );
   static TextStyle font13lightblackRegular = fonts.copyWith(
    fontSize: 13,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightBlack,
  );
  static TextStyle font13lightblacksemiBold = fonts.copyWith(
    fontSize:16,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.lightBlack,
  );
   static TextStyle font32LightBlackBold = fonts.copyWith(
      fontSize: 32,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.lightBlack);

static TextStyle font16LightBlackSemiBold = fonts.copyWith(
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.lightBlack,);
}
