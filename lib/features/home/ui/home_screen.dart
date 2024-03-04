import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/routing/routers.dart';
import 'package:kulinerku/core/theming/colors.dart';
import 'package:kulinerku/core/theming/styles.dart';
import 'package:kulinerku/features/home/ui/widgets/custom_appbar.dart';
import 'package:kulinerku/features/home/ui/widgets/custom_buttom_navigationBar.dart';
import 'package:kulinerku/features/home/ui/widgets/custom_search_and_text.dart';
import 'package:kulinerku/features/home/ui/widgets/custom_horizontal_listview.dart';

import '../../../core/helper/spacing.dart';
import 'widgets/custom_home_listview_and_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        appBar: appBar(),
        body: SafeArea(
            child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  const CustomSearchBarAndText(),
                  CustomHorizontalListView(categories: const [
                    'Italian',
                    'Western',
                    'Javanese',
                    'Indian'
                  ]),
                  const CustomHomeListView(),
                ]),
              ),
            ),
          ],
        )),
      ),
      const Align(
          alignment: Alignment.bottomCenter,
          child: CustomButtomNavigationBar()),
    ]);
  }
}
