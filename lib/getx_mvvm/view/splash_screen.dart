import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/data/app_exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Splash Screen")),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        throw internetException('error : ');
      }),
    );
  }
}
