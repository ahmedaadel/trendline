import 'package:flutter/material.dart';
import 'package:trendline/modules/Inner_Clothes.dart';
import 'package:trendline/modules/Outer_Clothes.dart';

import '../models/Clothes_Model.dart';
import '../shared/components/constants.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  // variable to toggle between the buttons if 1 the first button will change his color , so on
  int  pressedButton = 1;
  final List<Clothes> clothes = [
    Clothes('Shirt 1', 'Description for Shirt 1', 29.99 , Image.asset('assets/images/clothes1.jpg') ),
    Clothes('Shirt 2', 'Description for Shirt 2', 39.99,Image.asset('assets/images/clothes2.jpg') ),
    Clothes('Shirt 3', 'Description for Shirt 3', 49.99,Image.asset('assets/images/clothes3.jpg') ),
    Clothes('Shirt 4', 'Description for Shirt 4', 55.99,Image.asset('assets/images/clothes4.jpg') ),
    // Add more shirts as needed
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final List<Widget> pages = [OuterClothes() , const InnerClothes()] ;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "استكشف منتجاتنا",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: pressedButton == 1 ? pressedColor : buttonColor ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child:  Text("ملابس خروج", style: mainTextStyle(pressedButton,1), maxLines: 1),
                    ),
                    const SizedBox(width: 8),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: pressedButton == 2 ? pressedColor : buttonColor ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child:  Text("ملابس بيتي", style: mainTextStyle(pressedButton,2), maxLines: 1),
                    ),
                    const SizedBox(width: 8),

                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: pressedButton == 3 ? pressedColor : buttonColor ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child:  Text("موبايل", style: mainTextStyle(pressedButton,3), maxLines: 1),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 4;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: pressedButton == 4 ? pressedColor : buttonColor ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child:  Text("اكسسوارات موبايلات", style: mainTextStyle(pressedButton,4), maxLines: 1),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 5;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: pressedButton == 5 ? pressedColor : buttonColor ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child:  Text("اكسسوارات حريمي", style: mainTextStyle(pressedButton,5), maxLines: 1),
                    ),

                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 6;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: pressedButton == 6 ? pressedColor : buttonColor ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child:  Text("اجهزه كهربائيه", style: mainTextStyle(pressedButton,6), maxLines: 1),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 600,
                child :GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
          itemCount: clothes.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> ,
              ),
            );*/
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image(image: AssetImage("")),
                    ),
                    Expanded(
                      flex: 1,
                        child: Text(clothes[index].name)),
                    const SizedBox(height: 8.0),
                    Expanded(
                      flex: 1,
                        child: Text('السعر: \$${clothes[index].price.toStringAsFixed(2)}')),

                  ],
                ),
              ),
            );
          },
        ) ,
              )

            ],
          ),
        ),
      ),
    );
  }
}
