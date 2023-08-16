import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/data/app_exceptions.dart';
import 'package:flutter_getx/getx_mvvm/view_model/services/app_services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  AppServices appServices = AppServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    appServices.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Splash Screen")),
      ),

      backgroundColor: Colors.tealAccent,
      body: Center( child : Text('welcome_back'.tr)),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   throw internetException('error : ');
      // }),
    );
  }
}
