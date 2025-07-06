import 'package:flutter/material.dart';
import 'package:plus_store/features/home/presentation/views/widgets/discover.dart';
import 'package:plus_store/features/home/presentation/views/widgets/product_items_grid_view.dart';
import 'package:plus_store/features/home/presentation/views/widgets/product_type.dart';

import '../../../data/models/product_model.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: Discover()),
            const SliverToBoxAdapter(child: ProductType()),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  ProductItemsGridView(products: products),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}