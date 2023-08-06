import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter GetX')),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("GetX Dialog Alert "),
              subtitle: Text("This is dialog box- getx"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete chat",
                    // titlePadding: EdgeInsets.all(10),
                    // contentPadding: EdgeInsets.all(15),
                    contentPadding: EdgeInsets.only(left: 12, right: 12),
                    backgroundColor: Colors.red,
                    titleStyle: TextStyle(color: Colors.white),
                    middleText: "Are you sure you want to delete this chat?",
                    middleTextStyle: TextStyle(color: Colors.white),

                  // textConfirm: 'Yes',confirmTextColor: Colors.white,
                  // textCancel: 'No',cancelTextColor: Colors.white,

                  confirm: TextButton(onPressed: (){
                      // Navigator.pop(context);
                      Get.back();
                  }, child: const Text("Ok",style: TextStyle(color: Colors.white),),
                  ),
                  cancel: TextButton(onPressed: (){

                  }, child: const Text("Cancel",style: TextStyle(color: Colors.white),)),
                );


              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("GetX Bottom sheet "),
              subtitle: Text("This is dialog box- getx"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode,color: Colors.white,),
                          title: Text("Light Theme",style: TextStyle(color:Colors.white),),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode,color: Colors.white,),
                          title: Text("Dark Theme",style: TextStyle(color:Colors.white),),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );

              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.snackbar('Code Product','Subscribe to my channel',
          //   snackPosition: SnackPosition.BOTTOM,
          //   backgroundColor: Colors.blueAccent,
          //   colorText: Colors.white,
          //   icon: Icon(Icons.subscriptions)

          // );
        },
      ),
    );
  }
}
