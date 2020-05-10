import 'package:flutter/material.dart';

class VerifyNumber extends StatefulWidget {
  static String id = 'VerifyNumber';
  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Verify number',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor:  Color(0xFFff316a),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Enter Phone Number'),
                onChanged: (value){
                  this.phoneNumber = value;
                  },
              ),
              SizedBox(height: 10.0),
              RaisedButton(
                  onPressed: (){
                    print('verify');
                  },
                child: Text('VERIFY', style: TextStyle(fontWeight: FontWeight.bold)),
                textColor: Colors.white,
                elevation: 7.0,
                color: Color(0xFFff316a),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
