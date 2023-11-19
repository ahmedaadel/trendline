
import 'package:flutter/material.dart';

enum ProductsType{
  underwear , clothes , phones , devices  , deviceAccessories , womenAccessories
}
enum ProductSize {
  s, m , l , xl , xxl , xxxl
}
class Product {
   late String name ;
  late String description ;
  late double  price ;
  late AssetImage image ;
  late ProductsType productsType;
   late List<ProductSize> sizes;

   Product(this.name, this.description, this.price,this.image , this.productsType , this.sizes);

   String sizeName(ProductSize ps)
   {

     if(ps == ProductSize.s) {return "s" ;}
     else if (ps == ProductSize.m)  return "m" ;
     else if (ps == ProductSize.l)  return "l" ;
     else if (ps == ProductSize.xl)  return "xl" ;
     else if (ps == ProductSize.xxl)  return "xxl" ;
     else return "" ;
     }


   @override
  String toString() {
    return 'Product{name: $name, description: $description, price: $price, image: $image, productsType: $productsType, sizes: $sizes}';
  }


}