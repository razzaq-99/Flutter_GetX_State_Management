import 'dart:async';

import 'package:flutter_getx/getx_mvvm/resources/routes/getx_routes_name.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AppServices {
  void isLogin() {
       Timer(const Duration(seconds: 3) , () => Get.toNamed(RoutesName.loginView));
  }
}
