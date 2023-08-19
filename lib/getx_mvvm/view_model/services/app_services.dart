import 'dart:async';

import 'package:flutter_getx/getx_mvvm/resources/routes/getx_routes_name.dart';
import 'package:flutter_getx/getx_mvvm/view_model/controller/user_preferences/user_preference_view_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class AppServices {

  UserPreferences userPreferences = UserPreferences();

  void isLogin() {
      userPreferences.getUser().then((value){
        print(value.token);
        if(value.token!.isEmpty || value.token == 'null'){
          Timer(const Duration(seconds: 3) , () => Get.toNamed(RoutesName.loginView));
        }else{
          Timer(const Duration(seconds: 3) , () => Get.toNamed(RoutesName.homeView));
        }
      });

  }
}
