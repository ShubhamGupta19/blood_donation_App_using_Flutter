import 'package:blooddonation/screens/individual_signup.dart';
import 'package:blooddonation/screens/organizational_profile.dart';
import 'package:blooddonation/screens/police_profile.dart';
import 'package:flutter/material.dart';

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
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SignUp(buttonText: 'INDIVIDUAL'),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      //next page
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Organization()));
                      print('organisation');
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
                        child: Text(
                          'ORGANIZATION',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () {
                      //next page
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PoliceProfile()));
                      print('police station');
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
                        child: Text(
                          'POLICE STATION',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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

class SignUp extends StatelessWidget {
  final String buttonText;
  SignUp({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //next page
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => IndividualSignUp()));
        print('$buttonText');
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
          child: Text(
            '$buttonText',
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
