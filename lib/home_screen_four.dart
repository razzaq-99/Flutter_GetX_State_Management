
import 'package:flutter/material.dart';

class HomeScreenFour extends StatefulWidget {
  const HomeScreenFour({Key? key}) : super(key: key);

  @override
  State<HomeScreenFour> createState() => _HomeScreenFourState();
}

class _HomeScreenFourState extends State<HomeScreenFour> {

  List<String> MyList = ['Iphone X','Iphone 7+','Iphone 14 Pro','Samsung S23 Ultra','Vivo Y19','Oppo'];
  List<String> MyTempList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Favourite App")),
      ),
      body: ListView.builder(
        itemCount: MyList.length,
          itemBuilder: (context,index){
          return  Card(
            child: ListTile(
              onTap: (){
                MyTempList.add(MyList[index].toString());
              },
              title : Text(MyList[index].toString()),
              trailing: Icon(Icons.favorite),
            ),
          );

      })
    );
  }
}
