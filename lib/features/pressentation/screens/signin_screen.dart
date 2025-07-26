import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/features/pressentation/screens/choose_location_screen.dart';
import 'package:flutter_ui/features/pressentation/screens/login_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/button_with_label.dart';
import 'package:flutter_ui/features/pressentation/widgets/page_openning.dart';
import 'package:flutter_ui/features/pressentation/widgets/text_field_with_hint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/widgets/way_to_sign.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PageOpenning(title: "Sign Up Here "),
                10.verticalSpace,
                TextFieldWithHint(
                  icon: Icons.person,
                  textHint: "Name",
                  iconColor: Colors.black,
                ),
                12.verticalSpace,
                TextFieldWithHint(
                  textHint: "Email or Phone Number",
                  icon: Icons.email,
                  iconColor: Colors.black,
                ),
                12.verticalSpace,
                TextFieldWithHint(
                  textHint: "Password",
                  iconColor: Colors.black,
                  icon: Icons.lock,
                ),
                10.verticalSpace,
                Text(
                  'Or \n Sign Up With',
                  style: TextStyles.size10BlackW400YeonSung,
                  textAlign: TextAlign.center,
                ),
                WayToSign(),
                5.verticalSpace,
                ButtonWithLabel(
                  Func: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const ChooseLocationScreen(),
                      ),
                    );
                  },
                  label: "CreatAccount",
                ),
                15.verticalSpace,
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },

                  child: Text(
                    "Already Have an account ?",
                    style: TextStyles.size10Green700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
