import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kulinerku/core/helper/extentions.dart';
import 'package:kulinerku/core/helper/spacing.dart';
import 'package:kulinerku/features/home/ui/widgets/custom_horizontal_listview.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class ResturantDetails extends StatefulWidget {
  const ResturantDetails({super.key});

  @override
  State<ResturantDetails> createState() => _ResturantDetailsState();
}

int selectedIndex = 0;
List<String> images = [
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
];

class _ResturantDetailsState extends State<ResturantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                SizedBox(
                  height: 250.h,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/image1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "ABC Pizzeria",
                          style: TextStyles.font18WhiteSemiBold
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          horizontalSpace(8.w),
                          Text(
                            "Jalan ABC no 1, Kelapa Gading, Jakarta\n081234567890",
                            style: TextStyles.font13lightblackRegular
                                .copyWith(color: Colors.white),
                          ),
                          horizontalSpace(15.w),
                          AppTextButton(
                              horizontalPadding: 0,
                              verticalPadding: 0,
                              borderRadius: 10,
                              backgroundColor: ColorsManager.maindeeporange,
                              buttonHeight: 30.h,
                              buttonWidth: 100.w,
                              buttonText: "Direction",
                              textStyle: TextStyles.font18WhiteSemiBold
                                  .copyWith(fontSize: 14.0),
                              onPressed: () {}),
                          horizontalSpace(10.w),
                        ],
                      ),
                      verticalSpace(10.h)
                    ],
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(10.h),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: CustomHorizontalListView(categories: const [
              'Description',
              'Review',
              'Video',
              'Menu',
              'Order'
            ]),
          ),
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(images[index]),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              maxLines: 15,
              overflow: TextOverflow.ellipsis,
              "Welcome to ABC Pizzeria, your ultimate destination for an unforgettable pizza experience! We take pride in crafting exceptional pizzas that are sure to satisfy your cravings and delight your taste buds.At ABC Pizzeria, we specialize in handcrafted pizzas made with love and attention to detail. Our expert chefs use only the freshest, high-quality ingredients to create the perfect balance of flavors and textures. Whether you prefer a classic Margherita, a loaded meat lover's delight, or a unique gourmet creation, our diverse menu offers something for everyone.We believe that great pizza starts with great ingredients. That's why we source locally whenever possible, ensuring that our toppings and sauces are made from the finest, farm-fresh produce and premium meats. With each bite, you'll taste the difference that our commitment to quality makes.",
              style: TextStyles.font13lightblackRegular,
            ),
          ))
        ],
      ),
    );
  }
}
