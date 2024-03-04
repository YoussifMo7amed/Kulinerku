import 'package:flutter/material.dart';

import 'custom_image_and_text.dart';

class CustomHomeListView extends StatelessWidget {
  const CustomHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const ImageandText();
        });
  }
}
