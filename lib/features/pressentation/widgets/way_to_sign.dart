import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/features/pressentation/widgets/logo_name_pressed.dart';

class WayToSign extends StatelessWidget {
  const WayToSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LogoNamePressed(
          logoName: " Facebook",
          iconData: Icons.facebook,
          iconColor: Colors.blue,
        ),
        21.horizontalSpace,
        LogoNamePressed(
          logoName: " Google",
          imagePath: 'http://pngimg.com/uploads/google/google_PNG19635.png',
        ),
      ],
    );
  }
}
