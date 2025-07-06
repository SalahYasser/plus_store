import 'package:flutter/material.dart';
import 'package:plus_store/core/widgets/app_text_style.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Discover', style: AppTextStyle.semiBold32),
        Icon(Icons.notifications_none_rounded),
      ],
    );
  }
}