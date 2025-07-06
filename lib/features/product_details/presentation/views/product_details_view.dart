import 'package:flutter/material.dart';
import 'package:plus_store/features/product_details/presentation/views/widgets/product_details_app_bar.dart';
import 'package:plus_store/features/product_details/presentation/views/widgets/product_details_view_body.dart';

import '../../../home/data/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ProductDetailsViewBody(
        imageUrl: product.imageUrl,
        title: product.title,
        description: product.description,
        price: product.price,
      ),
    );
  }
}
