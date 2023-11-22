import 'package:flutter/material.dart';
import 'package:trendline/shared/components/components/components.dart';

import '../../models/ProductModel.dart';
import '../../shared/components/constants.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: DefaultText(text:" الوصف : ${product.description}",font_size:18,font:"Cairo" )
      
    );
  }
}
