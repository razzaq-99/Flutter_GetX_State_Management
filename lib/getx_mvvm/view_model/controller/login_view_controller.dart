

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginViewController extends GetxController{

 final emailController = TextEditingController().obs;
 final passwordController = TextEditingController().obs;

 final emailFocusNode = FocusNode().obs;
 final passwordFocusNode = FocusNode().obs;
}