// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';

import '../Search.dart';
import '../shared/components/constants.dart';
import 'ShopCubit.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    ShopCubit cubit = ShopCubit.get(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {  },icon:const Icon(IconlyBroken.more_circle)),
          centerTitle: true,
          title:const Text( "تريندلاين" , style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: "Cairo"
          ),),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ));
                },
                icon: const Icon(IconlyBroken.search))
          ],
        ),
        body: cubit.screens[cubit.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(IconlyBroken.home), label: 'الرئيسيه'),
            BottomNavigationBarItem(
                icon: Icon(IconlyBroken.heart), label: 'المفضل')],
          currentIndex: cubit.currentIndex,
          onTap: ((index) {
            cubit.changeNavBar(index);
          }),
        ),
      ),
    );
  }
}
