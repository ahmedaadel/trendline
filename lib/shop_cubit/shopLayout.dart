// ignore_for_file: file_names

import 'package:flutter/material.dart';


import '../Search.dart';
import 'Shop_Cubit.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    ShopCubit cubit = ShopCubit.get(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: IconButton(onPressed: () {  },icon:Icon(Icons.menu)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ));
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: cubit.screens[cubit.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسيه'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'المفضل')],
          currentIndex: cubit.currentIndex,
          onTap: ((index) {
            cubit.changeNavBar(index);
          }),
        ),
      ),
    );
  }
}
