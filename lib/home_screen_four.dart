import 'package:flutter/material.dart';
import 'package:flutter_getx/examplefour_getx_controller.dart';
import 'package:get/get.dart';

class HomeScreenFour extends StatefulWidget {
  const HomeScreenFour({Key? key}) : super(key: key);

  @override
  State<HomeScreenFour> createState() => _HomeScreenFourState();
}

class _HomeScreenFourState extends State<HomeScreenFour> {
  ExampleFourGetxContoller exampleFourGetxContoller =
      Get.put(ExampleFourGetxContoller());

  // List<String> MyList = ['Iphone X','Iphone 7+','Iphone 14 Pro','Samsung S23 Ultra','Vivo Y19','Oppo'];
  // List<String> MyTempList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Favourite App")),
        ),
        body: ListView.builder(
            itemCount: exampleFourGetxContoller.MyList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    if (exampleFourGetxContoller.MyTempList.contains(
                        exampleFourGetxContoller.MyList[index].toString())) {
                      // exampleFourGetxContoller.MyTempList.remove(
                      //     exampleFourGetxContoller.MyList[index].toString()
                      // );
                      exampleFourGetxContoller.removetoFavourite(exampleFourGetxContoller.MyList[index].toString());
                    } else {
                      // exampleFourGetxContoller.MyTempList.add(
                      //     exampleFourGetxContoller.MyList[index].toString());

                      exampleFourGetxContoller.addtoFavourite(exampleFourGetxContoller.MyList[index].toString());
                    }
                  //   setState(() {});
                  },
                  title:
                      Text(exampleFourGetxContoller.MyList[index].toString()),
                  trailing: Obx(() => Icon(
                    Icons.favorite,
                    color: exampleFourGetxContoller.MyTempList.contains(
                        exampleFourGetxContoller.MyList[index].toString())
                        ? Colors.red
                        : Colors.green,
                  ),),
                ),
              );
            }));
  }
}
