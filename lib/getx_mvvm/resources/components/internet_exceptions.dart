import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/resources/components/general_exceptions.dart';
import 'package:get/get.dart';

class InternetExceptions extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptions({Key? key,required this.onPress}) : super(key: key);

  @override
  State<InternetExceptions> createState() => _InternetExceptionsState();
}

class _InternetExceptionsState extends State<InternetExceptions> {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            const Icon(
              Icons.cloud_off,
              color: Colors.red,
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Text('internet_exception'.tr),
            )),
            SizedBox(height: height * 0.05),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => GeneralException()));
              },
              child: Container(
                height: 40,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: const Center(child: Text("Retry",style: TextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
