import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {Key? key,
      this.buttonColor = Colors.red,
      this.textColor = Colors.white,
      required this.title,
      required this.onPress,
      this.width = 60,
      this.height = 55,
      this.loading = false})
      : super(key: key);

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(40),

        ),
        child:loading ? CircularProgressIndicator() : Center(child: Text(title)),
      ),
    );
  }
}
