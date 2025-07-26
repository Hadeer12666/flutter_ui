import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/banner1.png', width: 300, height: 170);
  }
}
