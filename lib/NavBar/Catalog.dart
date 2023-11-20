import 'package:flutter/material.dart';

import '../models/ProductModel.dart';
import '../shared/components/constants.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  // variable to toggle between the buttons if 1 the first button will change his color , so on
  int pressedButton = 1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    List<ProductSize> size = [ProductSize.s, ProductSize.m ,ProductSize.xl];
    List<ProductSize> size2 = [ProductSize.s, ProductSize.xxl ,ProductSize.xl];
    List<Color> colors = [ Colors.red ,Colors.amber , Colors.blue , Colors.white , Colors.green , Colors.purple , Colors.yellow , Colors.black38];
    final List<Product> products =
    [
      Product('فستان صوف', 'فستان خامه صوف ', 29.99,
          const AssetImage('assets/images/clothes2.jpg'), ProductsType.clothes,size,colors,1 ),
      Product('تيشرت بولو', 'فستان خامه صوف', 39.99,
          const AssetImage('assets/images/clothes2.jpg'), ProductsType.clothes , size,colors,2),
      Product('تيشرت بولو', 'تيشرت بولو', 49.99,
          const AssetImage('assets/images/clothes3.jpg'), ProductsType.clothes , size,colors,3),
      Product('تيشرت بولو', 'فستان خامه صوف', 55.99,
          const AssetImage('assets/images/clothes4.jpg'), ProductsType.clothes , size2,colors,4),
      Product('تيشرت بولو', 'تيشرت بولو', 29.99,
          const AssetImage('assets/images/clothes2.jpg'), ProductsType.clothes , size2,colors,5),
      Product('تيشرت بولو', 'فستان خامه صوف', 39.99,
          const AssetImage('assets/images/clothes2.jpg'), ProductsType.clothes , size2,colors,6),
      Product('فستان صوف', 'فستان خامه صوف', 49.99,
          const AssetImage('assets/images/clothes3.jpg'), ProductsType.clothes, size2,colors,7),
      Product('فستان صوف', 'فستان خامه صوف', 55.99,
          const AssetImage('assets/images/clothes4.jpg'), ProductsType.clothes, size2,colors,8),
      // Add more shirts as needed
    ];

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
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo"),
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
                        backgroundColor:
                            pressedButton == 1 ? pressedColor : buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      child: Text("ملابس خروج",
                          style: catalogCardsTextStyle(pressedButton, 1),
                          maxLines: 1),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            pressedButton == 2 ? pressedColor : buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text("ملابس بيتي",
                          style: catalogCardsTextStyle(pressedButton, 2),
                          maxLines: 1),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            pressedButton == 3 ? pressedColor : buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text("موبايل",
                          style: catalogCardsTextStyle(pressedButton, 3),
                          maxLines: 1),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 4;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            pressedButton == 4 ? pressedColor : buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text("اكسسوارات موبايلات",
                          style: catalogCardsTextStyle(pressedButton, 4),
                          maxLines: 1),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 5;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            pressedButton == 5 ? pressedColor : buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text("اكسسوارات حريمي",
                          style: catalogCardsTextStyle(pressedButton, 5),
                          maxLines: 1),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pressedButton = 6;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            pressedButton == 6 ? pressedColor : buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text("اجهزه كهربائيه",
                          style: catalogCardsTextStyle(pressedButton, 6),
                          maxLines: 1),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Expanded (
                child:GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 1.0
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return catalogCards
                      (products[index], context);
                  },
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
