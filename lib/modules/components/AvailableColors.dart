import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/ProductModel.dart';
import '../../shared/components/constants.dart';

class AvailableColors extends StatelessWidget {
  final Product product;

  const AvailableColors({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text(" الالوان المتاحه : ",
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
                  child: ColorDot(
                    color: product.colors[index],
                    isSelected: true,
                  ),
                );
              },
              itemCount: product.colors.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color, required this.isSelected});

  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20 / 4,
        right: 20 / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}