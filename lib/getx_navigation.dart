import 'package:flutter/material.dart';
import 'package:flutter_getx/screen_1.dart';
import 'package:get/get.dart';

class GetXNavigation extends StatefulWidget {
  const GetXNavigation({Key? key}) : super(key: key);

  @override
  State<GetXNavigation> createState() => _GetXNavigationState();
}

class _GetXNavigationState extends State<GetXNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("GetX Navigation"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                // Navigator.push(context,
                // MaterialPageRoute(builder: (context) => Screen1()));

                // Get.to(const Screen1(name: " Abdul" ,));

                Get.toNamed('/Screen1',arguments: [
                  'Abdul',
                  'Razzaq'
                ]);
              },

              child: const Center(child: Text('GO TO SCREEN ONE')))
        ],
      ),
    );
  }
}
