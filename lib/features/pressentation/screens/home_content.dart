import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/features/pressentation/screens/recipe_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/banner_carousel.dart';
import 'package:flutter_ui/features/pressentation/widgets/custom_home_app_bar.dart';
import 'package:flutter_ui/features/pressentation/widgets/popular_header.dart';
import 'package:flutter_ui/features/pressentation/widgets/product_item.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          60.verticalSpace,
          const CustomHomeAppBar(),
          30.verticalSpace,
          // TODO: Need to make it carousel slider with package
          const BannerCarousel(),
          30.verticalSpace,
          const PopularHeader(),
          20.verticalSpace,
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                ProductItem(
                  imagePath: "assets/images/Menu Photo.png",
                  title: 'Herbal Pancake',
                  price: "7",
                  onAddToCart: () {},
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const RecipeScreen()),
                    );
                  },
                ),
                ProductItem(
                  imagePath: "assets/images/Photo Menu.png",
                  title: 'Fruit Salad',
                  price: "5",
                  onAddToCart: () {},
                  onTap: () {},
                ),
                ProductItem(
                  imagePath: "assets/images/Photo Menu (1).png",
                  title: 'Green Noddle',
                  price: "15",
                  onAddToCart: () {},
                  onTap: () {},
                ),
                ProductItem(
                  imagePath: "assets/images/Menu Photo.png",
                  title: 'Herbal Pancake',
                  price: "7",
                  onAddToCart: () {},
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
