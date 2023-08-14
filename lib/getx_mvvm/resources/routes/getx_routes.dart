


import 'package:flutter_getx/getx_mvvm/resources/routes/getx_routes_name.dart';
import 'package:flutter_getx/getx_mvvm/view/home_screen.dart';
import 'package:flutter_getx/getx_mvvm/view/splash_screen.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppRoutes{

  static appRoutes() => [

    GetPage(name: RoutesName.homeScreen, page: () => const GetXHomeScreen(),
        transitionDuration: const Duration(milliseconds: 300),
        transition: Transition.leftToRightWithFade)

  ];
}