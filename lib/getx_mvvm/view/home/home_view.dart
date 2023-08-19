import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/resources/routes/getx_routes_name.dart';
import 'package:flutter_getx/getx_mvvm/view_model/controller/user_preferences/user_preference_view_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreferences userPreferences = UserPreferences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                userPreferences.removeUser().then((value) {
                  Get.toNamed(RoutesName.loginView);
                });
              },
              icon: Icon(Icons.logout))
        ],
        title: const Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
