import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle semiBold64 = TextStyle(
    color: Color(0xFF191919),
    fontSize: 64,
    fontFamily: 'General Sans',
    fontWeight: FontWeight.w600,
    height: 0.80,
    letterSpacing: -3.20,
  );

  static const TextStyle medium16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'General Sans',
    fontWeight: FontWeight.w500,
    height: 1.40,
  );

  static const TextStyle semiBold32 = TextStyle(
    color: Color(0xFF191919),
    fontSize: 32,
    fontFamily: 'General Sans',
    fontWeight: FontWeight.w600,
    height: 1,
    letterSpacing: -1.60,
  );

  static const TextStyle regular16 = TextStyle(
    color: Color(0xFF7F7F7F),
    fontSize: 16,
    fontFamily: 'General Sans',
    fontWeight: FontWeight.w400,
    height: 1.40,
  );

  static const TextStyle light14 = TextStyle(
    color: Color(0x86191919),
    fontSize: 14,
    fontFamily: 'General Sans',
    fontWeight: FontWeight.w300,
    height: 1.40,
  );

  static const TextStyle medium14 = TextStyle(
    color: Color(0xFF191919),
    fontSize: 14,
    fontFamily: 'General Sans',
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    height: 1.40,
  );

}
