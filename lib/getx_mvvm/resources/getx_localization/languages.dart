

import 'package:get/get_navigation/get_navigation.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'email_hint' : 'Enter Email',
      'internet_exception' : 'We are unable to show results \nplease check your internet connection',
      'general_exception' : 'still some issues in your coonection\ntry again please',
      'welcome_back' : 'Welcome Back Again!',
    },
    'ur_PK' : {
      'email_hint' : 'ای میل درج کریں۔'
    },

  };


}