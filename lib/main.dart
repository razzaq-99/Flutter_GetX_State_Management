import 'package:flutter/material.dart';
// import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/getx_navigation.dart';
import 'package:flutter_getx/screen_1.dart';
import 'package:flutter_getx/screen_Two.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetXNavigation(),
      getPages: [
        GetPage(name: '/', page: () => GetXNavigation()),
        GetPage(name: '/Screen1', page: () => Screen1()),
        GetPage(name: '/ScreenTwo', page: () => ScreenTwo()),
      ],
    );
  }
}
