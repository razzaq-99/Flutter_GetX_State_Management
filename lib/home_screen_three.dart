import 'package:flutter/material.dart';
import 'package:flutter_getx/examplethree_getx_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({Key? key}) : super(key: key);

  @override
  State<HomeScreenThree> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {

  ExampleThreeGetXCOntroller exampleThreeGetXController = Get.put(ExampleThreeGetXCOntroller());

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
        title: const Center(child: Text("GetX Example Three")),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          const Text("Notifications"),
          Obx(() => Switch(value: exampleThreeGetXController.notifications.value, onChanged: (value) {
            // exampleThreeGetXController.notifications.value = value;
              exampleThreeGetXController.setNotifications(value);
          })),


        ],
      ),
    );
  }
}
