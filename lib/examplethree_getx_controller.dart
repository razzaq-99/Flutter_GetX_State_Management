
import 'package:get/get.dart';

class ExampleThreeGetXCOntroller extends GetxController{

  RxBool notifications = false.obs;

  setNotifications(bool value){
     notifications.value = value;

  }
}