import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/constants/app_images.dart';
import 'package:flutter_ui/features/pressentation/widgets/lower_text.dart';
import 'package:flutter_ui/features/pressentation/screens/onboarding_screen.dart';

import '../../../core/themes/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            160.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 86.w),
              child: AppImages.logoImage183h185w,
            ),
            54.verticalSpace,
            Text("Waves Of Food", style: TextStyles.size40BlackW400YeonSung),
            30.verticalSpace,
            const Text(
              "Deliever Favorite Food",
              style: TextStyle(fontSize: 12),
            ),
            200.verticalSpace,
            LowerText(),
          ],
        ),
      ),
    );
  }
}
