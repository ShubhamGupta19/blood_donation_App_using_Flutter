import 'package:flutter/material.dart';
import 'Welcome_Screen.dart';


class LoginSignup extends StatefulWidget {
  static String id = "LoginSignup";

  @override
  LoginSignupState createState() => LoginSignupState();
}

class LoginSignupState extends State<LoginSignup>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.red,
       title: Text('Blood Donate'),
     ),
     body: Container(
       child: Column(
         children: wid,
       ),
     ),
   );
  }

}