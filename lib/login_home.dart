import 'package:flutter/material.dart';
import 'package:flutter_getx/login_controller.dart';
import 'package:get/get.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  LoginController _controller = Get.put(LoginController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _controller.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Email',
                suffixIcon: Icon(Icons.email_outlined)
              ),
            ),
            TextFormField(
              controller: _controller.passwordController.value,
              decoration: const InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility_off_outlined)
              ),
            ),
            const SizedBox(
              height: 40,
            ),
           Obx(() {
             return  InkWell(
               onTap: (){
                 _controller.loginApi();
               },
               child: _controller.loading.value ? const CircularProgressIndicator() : Container(
                 height: 45,
                 width: 130,
                 decoration: const BoxDecoration(
                     color: Colors.blueAccent
                 ),
                 child: const Center(child: Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)),
               )
               ,
             );
           }
           )
          ],
        ),
      ),
    );
  }
}
