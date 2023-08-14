import 'package:flutter/material.dart';

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
    );
  }
}
