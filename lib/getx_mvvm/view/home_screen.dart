import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/resources/assets/image_asset.dart';
import 'package:flutter_getx/getx_mvvm/utils/utils.dart';
import 'package:get/get.dart';

// import 'package:get/get_navigation/get_navigation.dart';

class GetXHomeScreen extends StatefulWidget {
  const GetXHomeScreen({Key? key}) : super(key: key);

  @override
  State<GetXHomeScreen> createState() => _GetXHomeScreenState();
}

class _GetXHomeScreenState extends State<GetXHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:  Center(child: Text('email_hint'.tr),
      // ),
      // ),

      appBar: AppBar(
        title: const Center(child: Text("Asset Images")),
      ),
       body: const Image(
           image: AssetImage(ImageAssets.imageAsset1)),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //    Utils.toastMessage('Hello Toast');
      //    Utils.SnackBar('Hello', 'it is snackbar');
      // },
      //
      // ),
    );
  }
}
