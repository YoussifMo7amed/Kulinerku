import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class CustomTapBar extends StatefulWidget {
  final  List<String> items;
  final  List<Widget> screens;

  const CustomTapBar({super.key, required this.items, required this.screens});
  @override
  State<CustomTapBar> createState() => _CustomTapBarState();
}
  int current = 0;
  PageController pageController = PageController();
class _CustomTapBarState extends State<CustomTapBar> {
  @override
  Widget build(BuildContext context) {
    return 
       Container(
        width: double.infinity,
     height: 250.h,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [  
            /// Tab Bar
            SizedBox(
              width: double.infinity,
              height: 80.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount:widget.items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                            pageController.animateToPage(
                              current,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.ease,
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 100,
                            height: 55,
                         
                            child: Container(
                  height: 20.h,
                  width: 95.w,
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: current == index ? Colors.orange : Colors.white,
                    border: current != index
                        ? Border.all(color: ColorsManager.maindeeporange)
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      widget.items[index],
                      style: current == index
                          ? TextStyles.font14WhiteBold
                          : TextStyles.font14deepOrangeRegular,
                    ),
                  ),
                ),
                          ),
                        ),
                        Visibility(
                          visible: current == index,
                          child: Container(
                            width: 5,
                            height: 15,
                            decoration: const BoxDecoration(
                                color: ColorsManager.maindeeporange,
                                shape: BoxShape.circle),
                          ),
                        )
                      ],
                    );
                  }),
            ),

            /// MAIN BODY
            Container(
              width: double.infinity,
              height: 500.h,
              child: PageView.builder(
                itemCount: widget.screens.length,
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return widget.screens[index];
                },
              ),
            ),
          ],
        ),
      );
   
  }
}