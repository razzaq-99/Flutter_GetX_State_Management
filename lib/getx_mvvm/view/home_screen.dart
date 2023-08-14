import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_mvvm/utils/utils.dart';

class GetXHomeScreen extends StatefulWidget {
  const GetXHomeScreen({Key? key}) : super(key: key);

  @override
  State<GetXHomeScreen> createState() => _GetXHomeScreenState();
}

class _GetXHomeScreenState extends State<GetXHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Home Screen")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Utils.toastMessage('Hello Toast');
         Utils.SnackBar('Hello', 'it is snackbar');
      },

      ),
    );
  }
}
