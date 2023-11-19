import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendline/shop_cubit/ShopStates.dart';
import '../NavBar/Catalog.dart';
import '../NavBar/Favourite.dart';


class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(InitialState()) ;

  static ShopCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = const [
    CatalogScreen(),
    FavouriteScreen(),
  ];

  void changeNavBar(index) {
    currentIndex = index;
    emit(ChangeNavBarState());
  }

}
