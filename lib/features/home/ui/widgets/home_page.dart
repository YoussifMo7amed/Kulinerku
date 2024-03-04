import 'package:flutter/cupertino.dart';
import 'package:kulinerku/features/home/ui/widgets/custom_search_and_text.dart';
import 'package:kulinerku/features/home/ui/widgets/custom_horizontal_listview.dart';

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
        ));
  }
}