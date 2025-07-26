import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;
  final VoidCallback onAddToCart;
  final VoidCallback onTap;

  const ProductItem({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.onAddToCart,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 340.w,
        height: 100.h,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    imagePath,
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                  ),
                ),
                16.horizontalSpace,
                Expanded(
                  child: Text(
                    title,
                    style: TextStyles.size15BlackW400YeonSung,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                16.horizontalSpace,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("\$$price", style: TextStyles.size22GreenW400),
                    8.verticalSpace,
                    SizedBox(
                      width: 53.w,
                      height: 14.h,
                      child: ElevatedButton(
                        onPressed: onAddToCart,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.lightGreen,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: const FittedBox(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
