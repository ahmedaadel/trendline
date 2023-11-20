import 'package:flutter/material.dart';

import '../../models/ProductModel.dart';
import '../../shared/components/constants.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(" الوصف : ${product.description}",
        style:defaultTextStyle(),
      ),
    );
  }
}
