import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter GetX')),
      ),
      body: Column(
        children: const [

        ],
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: (){
        Get.snackbar('Code Product','Subscribe to my channel',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.blueAccent,
          colorText: Colors.white,
          icon: Icon(Icons.subscriptions)
        );

      },),
    );
  }
}
