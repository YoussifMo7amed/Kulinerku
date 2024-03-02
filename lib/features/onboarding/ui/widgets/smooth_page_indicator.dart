// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicetor extends StatelessWidget {
  SmoothIndicetor({super.key, required this.controler, required this.length});
  PageController controler = PageController();
  int length;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      SmoothPageIndicator(
        controller: controler,
        count: length,
        effect:const ExpandingDotsEffect(
            expansionFactor: 3.0,
            spacing: 5.0,
            offset: 15,
            dotWidth: 10.0,
            dotHeight: 10.0,
            strokeWidth: 1.5,
            dotColor: Colors.grey,
            activeDotColor: Colors.deepOrange),
      ),
    ]);
  }
}
