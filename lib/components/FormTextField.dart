import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FormTextField extends StatelessWidget {
  final String hintText;
  FormTextField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 1.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[100])),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '$hintText',
              hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}