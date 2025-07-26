import 'package:flutter/material.dart';
import 'package:flutter_ui/core/themes/text_styles.dart';

class CustomProfileField extends StatelessWidget {
  final String label;
  final String hint;

  const CustomProfileField({
    super.key,
    required this.label,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Text(label, style: TextStyles.size24BlackW400YeonSung),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              hint,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
            ),
          ),
        ],
      ),
    );
  }
}
