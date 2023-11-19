import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:trendline/models/ProductModel.dart';

import 'Components/color_and_size.dart';
import 'Components/product_title_with_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;


  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(IconlyBroken.heart), onPressed: () {}),
        actions: [
          IconButton(
            icon: Icon(IconlyBroken.arrowLeft2),
            onPressed: () => Navigator.pop(context),
          ),
          SizedBox(width: 20 / 2)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProductTitleWithImage(product: product),
            Container(
                margin: EdgeInsets.only(top: height * 0.3),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                // height: 500,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product,),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}
