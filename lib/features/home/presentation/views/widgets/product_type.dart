import 'package:flutter/material.dart';
import 'package:plus_store/core/widgets/app_text_style.dart';

class ProductType extends StatelessWidget {
  const ProductType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 1),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 7,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'All',
                  style: AppTextStyle.medium16.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: const Color(0xFF191919),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text('T-Shirts', style: AppTextStyle.medium16)],
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Jeans',
                  style: AppTextStyle.medium16.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Shoes',
                  style: AppTextStyle.medium16.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
