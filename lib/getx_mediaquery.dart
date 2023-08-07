import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GetXMediaQuery extends StatefulWidget {
  const GetXMediaQuery({Key? key}) : super(key: key);

  @override
  State<GetXMediaQuery> createState() => _GetXMediaQueryState();
}

class _GetXMediaQueryState extends State<GetXMediaQuery> {

  @override
  Widget build(BuildContext context) {

    // final heightt = MediaQuery.of(context).size.height*1;
    return Scaffold(
      body : Column(
        children: [
          Container(

            // height: MediaQuery.of(context).size.height*.2,
            // height: heightt*.7,

            height: Get.height*.5,
            color: Colors.red,
            child: Center(child: const Text("Center")),
          ),
          Container(

            // height: MediaQuery.of(context).size.height*.2,
            // height: heightt*.7,

            height: Get.height*.5,
            color: Colors.blue,
            child: Center(child: const Text("Center")),
          ),
        ],
      )
    );
  }
}
