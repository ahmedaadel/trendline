import 'package:flutter/material.dart';
import 'package:trendline/shared/components/components/components.dart';

import '../../models/ProductModel.dart';
import '../../shared/components/constants.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Text(" الوصف : " ,style: defaultTextStyle(),),
        Text("${product.description}", style: TextStyle(
          fontFamily: "Cairo" ,
          fontSize: 17
        ),)
      ],
    );
  }
}
