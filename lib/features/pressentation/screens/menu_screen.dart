import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';
import 'package:flutter_ui/features/pressentation/screens/home_screen.dart';
import 'package:flutter_ui/features/pressentation/screens/recipe_screen.dart';
import 'package:flutter_ui/features/pressentation/widgets/custom_home_app_bar.dart';
import 'package:flutter_ui/features/pressentation/widgets/product_item.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          },
        ),

        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomHomeAppBar(),
          15.verticalSpace,
          Text("Menu", style: TextStyles.size25BlackW400YeonSung),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
