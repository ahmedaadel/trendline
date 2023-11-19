
import 'package:flutter/material.dart';
import 'package:trendline/models/ProductModel.dart';
import 'package:trendline/modules/DetailedScreen.dart';

String? userToken = '';

Color defaultColor = Colors.grey;
const Color blackColor = Color(0xFF353535);
const Color greyColor = Color(0xFFc1c1c1);

Color? buttonColor = Colors.grey[300];
Color pressedColor = Colors.black87;
Color textColor = Colors.black;
Color pressedTextColor = Colors.white;


TextStyle catalogCardsTextStyle (int globalIntBetweenAllButtons,int choice)
{
     TextStyle mainTextStyle = TextStyle(
    color:  globalIntBetweenAllButtons == choice ? pressedTextColor : textColor,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
       fontFamily: "Cairo"
  );
     return mainTextStyle ;
}

getAPPWidth(context,figma_width){
return (MediaQuery.of(context).size.width)*figma_width/360;
}
getAppheight(context,figma_height){
return ((MediaQuery.of(context).size.height)*figma_height/800);
}
getAppSize(context,figma_size){
  var ratio=figma_size/(360*800);
  var myApp=(MediaQuery.of(context).size.height)*(MediaQuery.of(context).size.width);
return (myApp*ratio);
}
//const ratio_for_nav_bar=3/40;

Widget catalogCards(Product product , context )
{
  return InkWell(

    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsScreen(
                product: product)));},
    child: Container(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image(image: product.image,
              fit: BoxFit.fitWidth,),
            ),
            const SizedBox(height: 10.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(product.name ,style: const TextStyle(
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w500,


                ), ),
                Text(product.price.toString(),style: const TextStyle(
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w900
                ),  ),
              ],
            ),

          ],
        ),
      ),
    ),
  );
}
