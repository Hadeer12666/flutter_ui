import 'package:flutter/material.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';

class LogoNamePressed extends StatelessWidget {
  const LogoNamePressed({
    super.key,
    required this.logoName,
    this.iconData,
    this.iconColor,
    this.imagePath,
    this.imageWidth = 24,
    this.imageHeight = 24,
    this.onTap,
  });

  final String logoName;
  final IconData? iconData;
  final Color? iconColor;

  final String? imagePath;
  final double imageWidth;
  final double imageHeight;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    assert(
      iconData != null || imagePath != null,
      'You must provide either an iconData or an imagePath',
    );

    return SizedBox(
      height: 57,
      width: 152,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightwhite),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconData != null)
                Icon(iconData, color: iconColor ?? Colors.black, size: 24)
              else if (imagePath != null)
                Image.network(
                  imagePath!,
                  width: imageWidth,
                  height: imageHeight,
                ),
              const SizedBox(width: 8),
              Text(logoName, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
