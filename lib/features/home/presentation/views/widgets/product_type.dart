import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_text_style.dart';

class ProductType extends StatelessWidget {
  const ProductType({super.key, required this.label, required this.isSelected});

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF191919) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side:
              isSelected
                  ? BorderSide.none
                  : BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.grey.shade300,
                  ),
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: AppTextStyle.medium16.copyWith(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
