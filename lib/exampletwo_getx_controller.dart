

import 'package:get/get.dart';

class ExampleTwoGetXController extends GetxController{

  RxDouble opacity = .5.obs;

  SetOpacity(double value){
    opacity.value = value;
  }

}