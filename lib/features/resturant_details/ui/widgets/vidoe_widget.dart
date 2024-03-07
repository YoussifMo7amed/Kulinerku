import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/styles.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 0.h),
      itemBuilder: (context, index) => videoReview(),
      itemCount: 5,
    );
  }
}

class videoReview extends StatelessWidget {
  const videoReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Image.asset("assets/images/youtubeimage.png"),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "ABC pizza",
                    style: TextStyles.font20LightBlackBold,
                  ),
                  Text(
                    "Reviewer A",
                    style: TextStyles.font14LightBlackMedium,
                  ),
                ])
          ],
        ),
      )
    ]);
  }
}
