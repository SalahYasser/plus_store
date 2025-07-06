import 'package:flutter/material.dart';
import 'package:plus_store/features/product_details/presentation/views/widgets/size_button.dart';
import '../../../../../core/widgets/app_text_style.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  });

  final String imageUrl;
  final String title;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          imageUrl.startsWith('http')
              ? Image.network(
                imageUrl,
                height: 444,
                fit: BoxFit.cover,
                errorBuilder:
                    (_, __, ___) => Image.asset(
                      'assets/images/product.png',
                      height: 444,
                      fit: BoxFit.cover,
                    ),
              )
              : Image.asset(
                imageUrl,
                height: 444,
                fit: BoxFit.cover,
                errorBuilder:
                    (_, __, ___) => Image.asset(
                      'assets/images/buttel.webp',
                      height: 444,
                      fit: BoxFit.cover,
                    ),
              ),

          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.semiBold24,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '4.0/5',
                    style: AppTextStyle.medium16.copyWith(
                      color: const Color(0xFF191919),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '(45 reviews)',
                    style: AppTextStyle.medium16.copyWith(
                      color: const Color(0xFF7F7F7F),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.medium16.copyWith(
              color: const Color(0xFF7F7F7F),
            ),
          ),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerLeft,
            child: const Text('Choose size', style: AppTextStyle.semiBold20),
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              SizeButton(label: 'S'),
              SizedBox(width: 8),
              SizeButton(label: 'M'),
              SizedBox(width: 8),
              SizeButton(label: 'L'),
            ],
          ),
          const Divider(height: 32, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price', style: AppTextStyle.regular16),
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: AppTextStyle.semiBold24,
                  ),
                ],
              ),

              // Add to Cart Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(222, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.add_shopping_cart_outlined, color: Colors.white),
                    SizedBox(width: 8),
                    Text('Add to Cart', style: AppTextStyle.medium16),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
