


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Languages Screen")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en','US'));
              }, child: Text('English')),

              const SizedBox(
                width: 20,
              ),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur','PK'));
              }, child: Text('Urdu')),
            ],
          )
        ],
      ),
    );
  }
}
