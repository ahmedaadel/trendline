import 'dart:core';

import 'package:flutter/material.dart';
import 'package:trendline/models/Clothes_Model.dart';

class OuterClothes extends StatelessWidget {
   OuterClothes({Key? key}) : super(key: key);
   final List<Clothes> clothes = [
     Clothes('Shirt 1', 'Description for Shirt 1', 29.99 , Image.asset('assets/images/clothes1.jpg') ),
     Clothes('Shirt 2', 'Description for Shirt 2', 39.99,Image.asset('assets/images/clothes2.jpg') ),
     Clothes('Shirt 3', 'Description for Shirt 3', 49.99,Image.asset('assets/images/clothes3.jpg') ),
     Clothes('Shirt 4', 'Description for Shirt 4', 55.99,Image.asset('assets/images/clothes4.jpg') ),
     // Add more shirts as needed
   ];

   @override
  Widget build(BuildContext context) {

    return Scaffold();
  }
}
