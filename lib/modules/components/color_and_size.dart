import 'package:flutter/material.dart';
import 'package:trendline/models/ProductModel.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return  Row(
      children: [
        Text(" المقاسات المتاحه : " ,style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Cairo") ),
        SizedBox(
          width: (width - 200) ,
          height: 20,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 5,),
            itemBuilder: (context, index) {
              print(product.sizes[index].toString());
              return Container(
                width: 30,
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.white, // Set your desired color
                  borderRadius: BorderRadius.circular(
                      10), // Set the border radius
                ),
                child: Center(
                  child: Text(product.sizeName(product.sizes[index]),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
            itemCount: product.sizes.length,
            scrollDirection: Axis.horizontal,
          ),
        )],
    );
  }
}

