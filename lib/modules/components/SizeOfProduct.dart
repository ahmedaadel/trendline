import 'package:flutter/material.dart';
import 'package:trendline/models/ProductModel.dart';

import '../../shared/components/constants.dart';

class SizeOfProduct extends StatelessWidget {
  const SizeOfProduct({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
           Text(" المقاسات المتاحه : ",
              style:
                  defaultTextStyle(),),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: (width - 200),
            height: 25,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 5,
              ),
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set your desired color
                      borderRadius:
                          BorderRadius.circular(10), // Set the border radius
                    ),
                    child: Center(
                      child: Text(
                        product.sizeName(product.sizes[index]),
                        style: defaultTextStyle(),
                      ),
                    ),
                  ),
                );
              },
              itemCount: product.sizes.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
