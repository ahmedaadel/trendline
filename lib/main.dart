import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendline/shared/components/constants.dart';
import 'package:trendline/shared/network/Local/cache.dart';
import 'package:trendline/shop_cubit/ShopCubit.dart';
import 'package:trendline/shop_cubit/ShopLayout.dart';
import 'package:trendline/shop_cubit/ShopStates.dart';
import 'package:trendline/styles/Theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'models/ProductModel.dart';
import 'onBoarding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Cache_Helper.init();
  Widget wid = Container();
  bool? onBoard = Cache_Helper.getData(key: 'OnBoarding');
  userToken = Cache_Helper.getData(key: 'token');

  if (onBoard != null) {
    if (userToken != null) {
      wid = const ShopLayout();
    }
  } else {
    wid = OnBoarding_Screen();
  }

  runApp(MyApp(wid));
}

class MyApp extends StatelessWidget {
  final Widget currentScreen;
   const MyApp(this.currentScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ShopCubit(),
          )
        ],
        child: BlocConsumer<ShopCubit, ShopStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              locale: const Locale('ar', 'AR'),
              supportedLocales: const [Locale('ar', 'AR'), Locale('en', 'US')],
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              theme: lightTheme,
              debugShowCheckedModeBanner: false,
              home: currentScreen,
            );
          },
        ));
  }
}
