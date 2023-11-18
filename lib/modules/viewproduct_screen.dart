import 'package:flutter/material.dart';
import 'package:trendline/models/Clothes_Model.dart';
import 'package:trendline/shared/components/components/components.dart';


class ViewProductScreen extends StatelessWidget {

  
  Clothes product ;
  ViewProductScreen({super.key, 
    required this.product,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,),
      body: Container(
        child: DefaultText(color: Colors.black,font: 'ReemKufi',font_size: 15,text: product.price.toString()),
      ),
    );
  }
}