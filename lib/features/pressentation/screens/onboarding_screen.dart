import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/features/pressentation/widgets/lower_text.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/screens/login_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/button_with_label.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            98.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Image.asset(
                "assets/images/g10.png",
                width: 333.w,
                height: 312.h,
              ),
            ),

            Text(
              "Enjoy Restaurant Quality Meals \n at Home",
              textAlign: TextAlign.center,
              style: TextStyles.size20greenW400YeonSung,
            ),
            160.verticalSpace,
            ButtonWithLabel(
              Func: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
              label: 'Next',
            ),
            20.verticalSpace,
            LowerText(),
          ],
        ),
      ),
    );
  }
}
