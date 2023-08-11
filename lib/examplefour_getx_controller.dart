import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleFourGetxContoller extends GetxController {
  RxList<String> MyList = [
    'Iphone X',
    'Iphone 7+',
    'Iphone 14 Pro',
    'Samsung S23 Ultra',
    'Vivo Y19',
    'Oppo'
  ].obs;
  RxList MyTempList = [].obs;

  addtoFavourite(String value) {
    MyTempList.add(value);
  }

  removetoFavourite(String value) {
    MyTempList.remove(value);
  }
}
