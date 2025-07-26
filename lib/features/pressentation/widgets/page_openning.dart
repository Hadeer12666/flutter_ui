import 'package:flutter_ui/core/constants/app_images.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageOpenning extends StatelessWidget {
  const PageOpenning({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        40.verticalSpace,
        AppImages.logoImage91h91w,
        Text("Waves of food", style: TextStyles.size40BlackW400YeonSung),
        5.verticalSpace,
        Text("Deliver Favorite Food", style: TextStyles.size14GreenW700),
        10.verticalSpace,
        Text(title, style: TextStyles.size20GreenW700),
      ],
    );
  }
}
