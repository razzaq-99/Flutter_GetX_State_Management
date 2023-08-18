import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/resources/components/round_button.dart';
import 'package:flutter_getx/getx_mvvm/utils/utils.dart';
import 'package:flutter_getx/getx_mvvm/view_model/controller/login_view_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = Get.put(LoginViewController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('login'.tr),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginController.emailController.value,
                    focusNode: loginController.emailFocusNode.value,
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.SnackBar('Email', 'Enter your email');
                      }
                    },
                    onFieldSubmitted: (value){
                      Utils.FieldFocusChange(context, loginController.emailFocusNode.value, loginController.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const  SizedBox(
                     height: 10,
                   ),
                  TextFormField(
                    controller: loginController.passwordController.value,
                    focusNode: loginController.passwordFocusNode.value,
                    obscureText: true,
                    obscuringCharacter: '*',
                    validator: (value){
                      if(value!.isEmpty){
                        Utils.SnackBar('Password', 'Enter your password');
                      }
                    },

                    decoration: InputDecoration(
                      hintText: 'password_hint'.tr,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // RoundButton(
                  //   width: 150,
                  //   title: '',
                  //   onPress: () {},
                  // )
                  InkWell(
                       
                    onTap: (){

                      if(_formKey.currentState!.validate()){
                        loginController.loginApi();
                      };

                    },
                    child: Container(

                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(

                          color: Colors.green, borderRadius: BorderRadius.circular(10)),
                      child: const Center(

                          child: Text(
                            'Login',
                            style:
                            TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
                          )),
                    ),
                  )
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
