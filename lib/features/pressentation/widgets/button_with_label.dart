import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';

class ButtonWithLabel extends StatelessWidget {
  const ButtonWithLabel({super.key, required this.Func, required this.label});

  final VoidCallback Func;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157.w,
      height: 57.h,
      child: ElevatedButton(
        onPressed: Func,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightGreen,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),

        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyles.size20WhiteW400YeonSung,
        ),
      ),
    );
  }
}
