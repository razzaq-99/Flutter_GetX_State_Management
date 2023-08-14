import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getx/getx_mvvm/resources/colors/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {
  static void FieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,

    );
  }

  static SnackBar(String title,String message){

    Get.snackbar(
        title,
        message,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,

    );
  }
}
