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

  static TextStyle font18WhiteSemiBold = fonts.copyWith(
      fontSize: 18, fontWeight: FontWeightHelper.semiBold, color: Colors.white);
}
