import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/widgets/cusom_search_bar.dart';

import '../../../../core/helper/spacing.dart';
import 'restaurant_order.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(children: [
        CustomSearchBar(),
        verticalSpace(20.h),
        Expanded(
          child: ListView.builder(
            padding:  EdgeInsets.symmetric(vertical: 0.h),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: RestaurantOrder(),
            ),
            itemCount: 5,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
          ),
        ),
      ]),
    );
  }
}
