import 'package:flutter/material.dart';
import 'package:flutter_ui/features/pressentation/widgets/banner_image.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [BannerImage(), BannerImage(), BannerImage()],
      ),
    );
  }
}
