import 'package:blooddonation/screens/email_login.dart';
import 'package:blooddonation/screens/pass_confirm.dart';
import 'package:blooddonation/screens/signup_as.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/components/RedButton.dart';

class LoginSignup extends StatefulWidget {
  static String id = "LoginSignup";

  @override
  LoginSignupState createState() => LoginSignupState();
}

class LoginSignupState extends State<LoginSignup> {
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
                    fontSize: 40),
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
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.grey[100])),
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      onTap: () {
                        //on tap
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmailPage()));
                        print('login with mail');
                      },
                      child: Text(
                        'Login with email',
                        style: TextStyle(
                            color: Color(0xFFff4258),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  RedButton(
                    btnName: 'LOGIN',
                    onTap: (){
                      //Code For Login Button
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RedButton(
                    btnName: 'SIGNUP',
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PassConfirm()));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RedButton(
                    btnName: 'LOGIN WITH GOOGLE',
                    onTap: (){
                      //Code For Login With google Button
                    },
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


