import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/features/pressentation/widgets/lower_text.dart';
import 'package:flutter_ui/features/pressentation/screens/signin_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/button_with_label.dart';
import 'package:flutter_ui/features/pressentation/widgets/page_openning.dart';
import 'package:flutter_ui/features/pressentation/widgets/text_field_with_hint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/widgets/way_to_sign.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Add here gesture Detector with unfocus.
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PageOpenning(title: "Login To Your Account "),
                10.verticalSpace,
                TextFieldWithHint(textHint: 'Email or Phone Number'),
                12.verticalSpace,
                TextFieldWithHint(textHint: 'Password'),
                10.verticalSpace,
                Text(
                  "Or \n Continue With",
                  style: TextStyles.size10BlackW400YeonSung,
                  textAlign: TextAlign.center,
                ),
                10.verticalSpace,
                WayToSign(),
                10.verticalSpace,
                ButtonWithLabel(Func: () {}, label: "Login"),
                15.verticalSpace,
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const SigninScreen()),
                    );
                  },
                  child: Text(
                    "Don't have an Account?",
                    style: TextStyles.size10Green700,
                  ),
                ),
                50.verticalSpace,
                LowerText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
