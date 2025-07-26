import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        10.horizontalSpace,
        Text(
          "Explore Your Favorite Food",
          style: TextStyles.size25BlackW400YeonSung,
        ),
        const Spacer(),
        Icon(Icons.notifications_none, color: AppColors.lightGreen),
        10.horizontalSpace,
      ],
    );
  }
}
