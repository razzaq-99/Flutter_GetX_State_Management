import 'package:flutter/material.dart';
// import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/getx_navigation.dart';
import 'package:flutter_getx/home_screen_four.dart';
import 'package:flutter_getx/home_screen_three.dart';
import 'package:flutter_getx/home_screen_two.dart';
import 'package:flutter_getx/languages.dart';
import 'package:flutter_getx/languages_screen.dart';
import 'package:flutter_getx/login_home.dart';
import 'package:flutter_getx/screen_1.dart';
import 'package:flutter_getx/screen_Two.dart';
import 'package:flutter_getx/getx_mediaquery.dart';
import 'package:flutter_getx/getx_state_management.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // translations: Languages(),
      // locale: Locale('ur','PK'),
      // locale: Locale('en','US'),
      // fallbackLocale: Locale('en','US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

       home: const LoginHome(),

       // home: const HomeScreenFour(),

       // home: const HomeScreenThree(),

       // home: const HomeScreenTwo(),

       // home: GetxStateManagement(),

      // home: const LanguagesScreen(),

      // home: const GetXMediaQuery(),

      // home: const GetXNavigation(),
      // getPages: [
      //   GetPage(name: '/', page: () => GetXNavigation()),
      //   GetPage(name: '/Screen1', page: () => Screen1()),
      //   GetPage(name: '/ScreenTwo', page: () => ScreenTwo()),
      // ],
    );
  }
}

