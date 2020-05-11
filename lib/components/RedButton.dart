import 'package:flutter/material.dart';

class RedButton extends StatelessWidget
{

  final Function onTap;
  final String btnName;
  const RedButton({ this.onTap,this.btnName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Color(0xFFff316a),
              Color(0xFFff3f5c),
              Color(0xFFff4951),
            ],
          ),
        ),
        child: Center(
          child: Text(
            '$btnName',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}