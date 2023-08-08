import 'dart:async';

import 'package:flutter/material.dart';

class GetxStateManagement extends StatefulWidget {
  const GetxStateManagement({Key? key}) : super(key: key);

  @override
  State<GetxStateManagement> createState() => _GetxStateManagementState();
}

class _GetxStateManagementState extends State<GetxStateManagement> {
  int x = 0;

  @override
  initState(){

    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      x++;
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("GetX State Management")),
      ),
      body: Center(
        child: Text(
          x.toString(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {
          x++;
          // print(x++);
          setState(() {

          });
        },
      ),
    );
  }
}
