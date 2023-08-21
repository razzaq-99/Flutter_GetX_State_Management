
import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/utils/utils.dart';
import 'package:flutter_getx/login_controller.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    return TextFormField(
      controller: loginController.passwordController.value,
      focusNode: loginController.passwordFocusNode.value,
      obscureText: true,
      obscuringCharacter: '*',
      validator: (value) {
        if (value!.isEmpty) {
          Utils.SnackBar('Password', 'Enter your password');
        }
      },
      decoration: InputDecoration(
        hintText: 'password_hint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
