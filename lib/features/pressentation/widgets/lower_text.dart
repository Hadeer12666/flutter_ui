import 'package:flutter/material.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';

class LowerText extends StatelessWidget {
  const LowerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Design By\nNeatRoots",
      textAlign: TextAlign.center,
      style: TextStyle(color: AppColors.lightGreen),
    );
  }
}
