import 'package:flutter/material.dart';
import 'package:plus_store/features/home/presentation/views/widgets/product_type.dart';

class ProductTypeList extends StatefulWidget {
  const ProductTypeList({super.key});

  @override
  ProductTypeListState createState() => ProductTypeListState();
}

class ProductTypeListState extends State<ProductTypeList> {
  String selectedLabel = 'All';

  final List<String> types = [
    'All',
    'T-Shirts',
    'Jeans',
    'Shoes',
    'Make Up',
    'Bags',
    'Chairs',
    'Perfume',
    'Beds',
    'Tables',
    'Laptops',
    'Mobiles',
    'Glasses',
    'Watches',
    'Books',
    'Camera',
  ];

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 1),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:
          types.map((label) {
            final bool isSelected = label == selectedLabel;

            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLabel = label;
                  });
                },
                child: ProductType(
                  label: label,
                  width: screenWidth / 4,
                  isSelected: isSelected,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}