import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/screens/menu_screen.dart';

class PopularHeader extends StatelessWidget {
  const PopularHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        30.horizontalSpace,
        Text("Popular", style: TextStyles.size16BlackW400YeonSung),
        const Spacer(),
        SizedBox(
          height: 35,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const MenuScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: AppColors.lightwhite),
              ),
            ),
            child: Text(
              "View Menu",
              textAlign: TextAlign.center,
              style: TextStyles.size14GreenW700,
            ),
          ),
        ),
        30.horizontalSpace,
      ],
    );
  }
}
