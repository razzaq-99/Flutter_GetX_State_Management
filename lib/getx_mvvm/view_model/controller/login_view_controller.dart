import 'package:flutter/cupertino.dart';
import 'package:flutter_getx/getx_mvvm/data/repository/login_repo/login_repository.dart';
import 'package:flutter_getx/getx_mvvm/utils/utils.dart';
import 'package:get/get.dart';

class LoginViewController extends GetxController {
  final _api = LoginRepo();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;
  void loginApi() {
   loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
     loading.value = false;
     Utils.SnackBar('Login', 'Login Successfully');
    }).onError((error, stackTrace) {
     loading.value = false;
      Utils.SnackBar('Error', error.toString());
    });
  }
}
