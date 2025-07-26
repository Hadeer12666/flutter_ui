import 'package:flutter/material.dart';
import 'package:flutter_ui/core/themes/app_colors.dart';

class TextFieldWithHint extends StatelessWidget {
  final String textHint;
  final TextEditingController? controller;
  final IconData? icon;
  final Color? iconColor;
  const TextFieldWithHint({
    super.key,
    required this.textHint,
    this.controller,
    this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: textHint,
        prefixIcon: icon != null
            ? Icon(icon, color: iconColor ?? Colors.grey)
            : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.lightwhite, width: 2),
        ),
      ),
    );
  }
}
