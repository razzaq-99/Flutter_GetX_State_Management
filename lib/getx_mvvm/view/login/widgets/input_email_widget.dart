
import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/utils/utils.dart';
import 'package:flutter_getx/login_controller.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

class InputEmailWidget extends StatelessWidget {
  const InputEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    return TextFormField(
      controller: loginController.emailController.value,
      focusNode: loginController.emailFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.SnackBar('Email', 'Enter your email');
        }
      },
      onFieldSubmitted: (value) {
        Utils.FieldFocusChange(
            context,
            loginController.emailFocusNode.value,
            loginController.passwordFocusNode.value);
      },
      decoration: InputDecoration(
        hintText: 'email_hint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
