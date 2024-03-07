import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_show_dialog.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../profile/ui/widgets/custom_edit_profile_text_and_textformfield.dart';

class VideoUploadingPage extends StatelessWidget {
  const VideoUploadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: "Upload New Video"),
      body: Column(children: [
        Image.asset("assets/images/youtubeimage.png"),
        //from edit profile feature
        const CustomTextAndTextFormField(
            text: 'Video Title', hintText: 'Add your video title'),
        const CustomTextAndTextFormField(
            text: 'Restaurant',
            hintText: 'Choose the restaurant you’re reviewing'),
        CustomTextAndTextFormField(
          text: 'Description',
          hintText: 'Add your video description',
          height: 20.h,
        ),
        Expanded(child: verticalSpace(20.h)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppTextButton(
              buttonText: "Upload Data",
              textStyle: TextStyles.font14WhiteBold,
              onPressed: () {
                customshowDialog(
                  context: context,
                );
              }),
        )
      ]),
    );
  }
}
