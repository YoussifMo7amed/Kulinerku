import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DescriptionWidget extends StatelessWidget {
final List<String> images = [
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
  'assets/images/image2.png',
  'assets/images/image3.png',
];
   DescriptionWidget({super.key,});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Column(
        children: [
          SizedBox(
              height:200.h,
              width: 400.w,
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
                maxLines: 17,
                overflow: TextOverflow.ellipsis,
                "Welcome to ABC Pizzeria, your ultimate destination for an unforgettable pizza experience! We take pride in crafting exceptional pizzas that are sure to satisfy your cravings and delight your taste buds.At ABC Pizzeria, we specialize in handcrafted pizzas made with love and attention to detail. Our expert chefs use only the freshest, high-quality ingredients to create the perfect balance of flavors and textures. Whether you prefer a classic Margherita, a loaded meat lover's delight, or a unique gourmet creation, our diverse menu offers something for everyone.We believe that great pizza starts with great ingredients. That's why we source locally whenever possible, ensuring that our toppings and sauces are made from the finest, farm-fresh produce and premium meats. With each bite, you'll taste the difference that our commitment to quality makes.",
                style: TextStyles.font13lightblackRegular,
              ),
            ))
        ]
      ),
    );
  }
}