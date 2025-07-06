import 'package:flutter/material.dart';
import 'package:plus_store/core/widgets/app_text_style.dart';

class ForgotYourPassword extends StatelessWidget {
  const ForgotYourPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Forgot your password? ',
            style: AppTextStyle.light14,
          ),
          TextSpan(
            text: 'Reset your password',
            style: AppTextStyle.medium14,
          ),
        ],
      ),
    );
  }
}