import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.validator,
  });

  final String labelText;
  final String hintText;

  // final TextEditingController userNameController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        label: Text(labelText),
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w400,
          height: 1.40,
        ),
      ),
    );
  }
}
