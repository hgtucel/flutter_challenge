import 'package:challenge_app/presentation/constants.dart';
import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final Function(String value) onChanged;
  AuthInput({this.labelText, this.hintText, this.keyboardType, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                labelText,
                style: TextStyle(
                    fontSize: 16,
                    color: labelTextColor,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
                color: inputBgColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: shadowColor,
                      blurRadius: 10,
                      spreadRadius: 20,
                      offset: Offset(20, 10)),
                  BoxShadow(
                      color: shadowColor,
                      blurRadius: 17,
                      spreadRadius: -10,
                      offset: Offset(10, 17))
                ]),
            child: TextFormField(
              keyboardType: keyboardType,
              onChanged: onChanged,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: labelTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                  hintText: hintText,
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
