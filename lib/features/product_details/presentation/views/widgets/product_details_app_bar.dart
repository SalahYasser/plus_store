import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_text_style.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: const Text('Product Details', style: AppTextStyle.semiBold24),
    centerTitle: true,
  );
}