import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/screens/cart_screen.dart';
import 'package:flutter_ui/features/pressentation/screens/confirmation_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/custom_profile_field.dart';

class EditingScreen extends StatelessWidget {
  const EditingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const CartScreen()),
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          50.verticalSpace,
          Text(
            "edit",
            style: TextStyles.size24GreenW400YeonSung,
            textAlign: TextAlign.center,
          ),
          CustomProfileField(label: ' Name ', hint: 'lorem ipsum'),
          10.verticalSpace,
          CustomProfileField(
            label: ' Address ',
            hint:
                'Lorem ipsum is placeholder text\n commonly used in the graphic,\n print, and publishing industries\n for previewing layouts and visual ',
          ),
          10.verticalSpace,
          CustomProfileField(label: 'Phone', hint: '1234567889'),
          10.verticalSpace,
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Payment Method",
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
                  ),
                ),

                Image.asset("assets/images/cashondelivery 1.png"),
              ],
            ),
          ),
          10.verticalSpace,
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Total Price",
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
                  ),
                ),
                Text("\$35", style: TextStyles.size20GreenW700YeonSung),
                20.horizontalSpace,
              ],
            ),
          ),
          200.verticalSpace,
          SizedBox(
            width: 325.w,
            height: 57.h,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const ConfirmationScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightGreen,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              child: Text(
                "Place Your Order",
                textAlign: TextAlign.center,
                style: TextStyles.size20WhiteW400YeonSung,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
