import 'package:flutter/material.dart';
import '../../../../../core/widgets/app_text_style.dart';

class SizeButton extends StatelessWidget {
  final String label;

  const SizeButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          label,
          style: AppTextStyle.medium20.copyWith(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}