import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/screens/cart_screen.dart';
import 'package:flutter_ui/features/pressentation/screens/menu_screen.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const MenuScreen()),
            );
          },
        ),

        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Food Name",
              style: TextStyles.size24BlackW400YeonSung,
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/images/Menu Photo (1).png",
              width: 300,
              height: 200,
            ),
            10.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Short description",
                  style: TextStyles.size24BlackW400YeonSung,
                ),
                Text(
                  "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, \n sed do eiusmod tempor incididunt \nut labore et dolore magna aliqua. Ut enim ad",
                  style: TextStyles.size16BlackW400,
                ),
                10.verticalSpace,
                Text("Ingredients", style: TextStyles.size24BlackW400YeonSung),
                Text(
                  "*Strawberry \n *Cream \n *wheat",
                  style: TextStyles.size16BlackW400,
                ),
              ],
            ),
            20.verticalSpace,
            SizedBox(
              width: 326.w,
              height: 57.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const CartScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.lightGreen,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                child: Text(
                  "Add To Cart",
                  textAlign: TextAlign.center,
                  style: TextStyles.size20WhiteW400YeonSung,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
