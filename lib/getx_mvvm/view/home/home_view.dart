import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/data/response/status.dart';
import 'package:flutter_getx/getx_mvvm/resources/routes/getx_routes_name.dart';
import 'package:flutter_getx/getx_mvvm/view_model/controller/home/home_view_model.dart';

import 'package:flutter_getx/getx_mvvm/view_model/controller/user_preferences/user_preference_view_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());
  UserPreferences userPreferences = UserPreferences();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userlistApi();
  }

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
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.Loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Status.Error:
            return const Center(child: Text("Something went wrong"));
          case Status.Complete:
            return ListView.builder(
                itemCount: homeController.userList.value.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(homeController
                          .userList.value.data![index].firstName
                          .toString()),
                      subtitle: Text(homeController
                          .userList.value.data![index].email
                          .toString()),
                    ),
                  );
                });
        }
      }),
    );
  }
}
