import 'package:blooddonation/screens/email_login.dart';
import 'package:blooddonation/screens/signup_as.dart';
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
     resizeToAvoidBottomPadding: false,
     backgroundColor: Colors.white,
     body: Container(
       child: Column(
         children: <Widget>[
           Container(
             height: 250,
             decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage('images/Rectangle 7.png'),
                 fit: BoxFit.fill,
               ),
             ),
             child: Stack(
               children: <Widget>[
                 Positioned(
                     child: Container(
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage('images/Artboard 1@2x.png'),
                         ),
                       ),
                     ),
                 ),
               ],
             ),
           ),
           Container(
              margin: EdgeInsets.only(top: 10),
             child: Text(
               'WELCOME',
               textAlign: TextAlign.center,
               style: TextStyle(
                 color: Color(0xFFff3764),
                 fontWeight: FontWeight.bold,
                 fontSize: 40
               ),
             ),
           ),
           Padding(
               padding: EdgeInsets.all(30.0),
             child: Column(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                         color: Color.fromRGBO(255, 73, 81, 1),
                         blurRadius: 10.0,
                         offset: Offset(0,10),
                       ),
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
                         hintText: "Mobile Number",
                         hintStyle: TextStyle(color: Colors.grey[400]),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                   alignment: Alignment(1.0, 0.0),
                   padding: EdgeInsets.only(top: 15.0, left: 20.0),
                   child: InkWell(
                     onTap: (){
                       //on tap
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmailPage()));
                       print('login with mail');
                     },
                     child: Text(
                         'Login with email',
                       style: TextStyle(
                         color: Color(0xFFff4258),
                         fontWeight: FontWeight.bold,
                         decoration: TextDecoration.underline
                       ),
                     ),
                   ),
                 ),
                 SizedBox(height: 30),
                 GestureDetector(
                   onTap: (){
                     //next page
                     print('login');
                   },
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
                       child: Text('LOGIN', style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                       ),),
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 GestureDetector(
                   onTap: (){
                     //next page
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpAs()));
                     print('signup');
                   },
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
                       child: Text('SIGNUP', style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                       ),),
                     ),
                   ),
                 ),
                 SizedBox(height: 30,),
                 GestureDetector(
                   onTap: (){
                     //next page
                     print('LOGIN WITH GOOGLE');
                   },
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
                       child: Text('LOGIN WITH GOOGLE', style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                       ),),
                     ),
                   ),
                 ),

               ],
             ),
           ),
         ],
       ),
     ),
   );
  }

}