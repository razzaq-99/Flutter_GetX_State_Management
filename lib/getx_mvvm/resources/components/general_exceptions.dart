import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralException extends StatefulWidget {
  // final VoidCallback onPress;
  const GeneralException({
    Key? key,
  }) : super(key: key);

  @override
  State<GeneralException> createState() => _GeneralExceptionState();
}

class _GeneralExceptionState extends State<GeneralException> {
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
              color: Colors.yellowAccent,
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Text('general_exception'.tr),
            )),
            SizedBox(height: height * 0.05),
            InkWell(
              // onTap: widget.onPress,
              child: Container(
                height: 40,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const Center(
                    child: Text(
                  "Retry",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
