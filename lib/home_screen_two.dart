import 'package:flutter/material.dart';
import 'package:flutter_getx/exampletwo_getx_controller.dart';
import 'package:get/get.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  ExampleTwoGetXController exampleTwoGetXController =
      Get.put(ExampleTwoGetXController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('GetX Example Two')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.green
                  .withOpacity(exampleTwoGetXController.opacity.value),
            ),
          ),
          Obx(() => Slider(
              value: exampleTwoGetXController.opacity.value,
              onChanged: (value) {

                exampleTwoGetXController.opacity.value = value;
              })),
        ],
      ),
    );
  }
}
