import 'package:flutter/material.dart';

import '../../models/ProductModel.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Image(
        image: product.image,
      ),
    );
  }
}
