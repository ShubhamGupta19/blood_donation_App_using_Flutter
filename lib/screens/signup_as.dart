import 'package:blooddonation/screens/individual_signup.dart';
import 'package:blooddonation/screens/organizational_profile.dart';
import 'package:blooddonation/screens/police_profile.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/components/RedButton.dart';

class SignUpAs extends StatefulWidget {
  static String id = 'SignUpAs';

  @override
  _SignUpAsState createState() => _SignUpAsState();
}

class _SignUpAsState extends State<SignUpAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'SIGN UP AS:',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFff4951),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                 RedButton(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => IndividualSignUp()));
                   },
                   btnName:'INDIVIDUAL' ,

                 ),
                  SizedBox(height: 20.0),
                  RedButton(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Organization()));
                    },
                    btnName:'ORGANIZATION' ,

                  ),
                  SizedBox(height: 30.0),
                  RedButton(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PoliceProfile()));
                    },
                    btnName:'POLICE STATION' ,

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

