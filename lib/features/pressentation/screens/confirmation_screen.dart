import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/screens/home_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/button_with_label.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 120),
        child: Column(
          children: [
            Text(
              "Congrats\n Your Order Placed",
              style: TextStyles.size24BlackW400YeonSung,
              textAlign: TextAlign.center,
            ),
            Image.asset(
              "assets/images/Illustration.png",
              width: 172,
              height: 162,
            ),
            50.verticalSpace,
            ButtonWithLabel(
              Func: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const HomeScreen()),
                );
              },
              label: "GO Home",
            ),
          ],
        ),
      ),
    );
  }
}
