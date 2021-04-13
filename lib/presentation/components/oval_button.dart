import 'package:flutter/material.dart';

class OvalButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final void Function() onPress;

  OvalButton(
      {this.text,
      this.bgColor,
      this.borderColor,
      this.textColor,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: borderColor)),
      child: TextButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 17, fontWeight: FontWeight.bold),
          )),
    );
  }
}
