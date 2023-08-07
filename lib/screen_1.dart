
import 'package:flutter/material.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/screen_Two.dart';
import 'package:get/get.dart';

class Screen1 extends StatefulWidget {
  var  name;
   Screen1({Key? key,  this.name}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Screen One"+Get.arguments[0]),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          TextButton(onPressed: (){
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
           //  Get.back();
            Get.to(const ScreenTwo());
          }, child: const Center(child: Text('GO TO SCREEN TWO')))
        ],
      ),
    );
  }
}
