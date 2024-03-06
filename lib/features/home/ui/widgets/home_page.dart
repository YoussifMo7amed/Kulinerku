import 'package:kulinerku/features/home/ui/widgets/custom_horizontal_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/theming/styles.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/cusom_search_bar.dart';
import 'custom_home_listview_and_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              const CustomSearchBar(),
              verticalSpace(15.h),
              Text(
                "What do you want to eat?",
                style: TextStyles.font22LightBlackBold,
              ),
              const CustomHorizontalListView(
                  categories: ['Italian', 'Western', 'Javanese', 'Indian']),
              const CustomHomeListView(),
            ]),
          ),
        ),
      ],
    ));
  }
}
