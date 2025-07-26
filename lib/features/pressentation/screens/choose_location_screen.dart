import 'package:flutter_ui/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/features/pressentation/widgets/lower_text.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/screens/home_screen.dart';

class ChooseLocationScreen extends StatefulWidget {
  const ChooseLocationScreen({super.key});

  @override
  State<ChooseLocationScreen> createState() => _ChooseLocationScreenState();
}

class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  String? selectedCity;

  final List<String> cities = [
    'Cairo',
    'Alexandria',
    'Giza',
    'Mansoura',
    'Aswan',
    'Luxor',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            50.verticalSpace,
            Text(
              "Choose Your Location ",

              style: TextStyles.size25BlackW400YeonSung,
            ),

            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: AppColors.lightwhite),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: AppColors.lightwhite,
                    width: 2,
                  ),
                ),
              ),
              value: selectedCity,
              items: cities
                  .map(
                    (city) => DropdownMenuItem(value: city, child: Text(city)),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });

                if (value != null) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                }
              },
            ),
            310.verticalSpace,
            Text(
              "To provide you with the best dining experience, we need your permission to access your device's location. By enabling location services, we can offer personalized restaurant recommendations, accurate delivery estimates, and ensure a seamless food delivery experience.",
              style: TextStyles.size16BlackW400,
            ),
            20.verticalSpace,
            LowerText(),
          ],
        ),
      ),
    );
  }
}
