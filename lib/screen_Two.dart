
import 'package:flutter/material.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Screen Two"),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          TextButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            //  Get.back();
            // Get.to(const HomeScreen());
            Get.back();
            Get.back();
          }, child: const Center(child: Text('GO TO HOME SCREEN')))
        ],
      ),
    );
  }
}
