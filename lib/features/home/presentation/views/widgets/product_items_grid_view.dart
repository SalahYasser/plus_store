import 'package:flutter/material.dart';
import 'package:plus_store/features/home/data/models/product_model.dart';
import 'package:plus_store/features/home/presentation/views/widgets/product_item.dart';

class ProductItemsGridView extends StatelessWidget {
  const ProductItemsGridView({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.55,
        // mainAxisExtent: 400,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductItem(product: product);
      },
    );
  }
}
