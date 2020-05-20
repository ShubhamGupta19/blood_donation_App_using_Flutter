import 'package:blooddonation/components/FormTextField.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/components/FormTextField.dart';

class PassConfirm extends StatefulWidget {
  static String id = 'PassConfirm';
  @override
  _PassConfirmState createState() => _PassConfirmState();
}

class _PassConfirmState extends State<PassConfirm> {
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('SignUp', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFFff316a),
      ),
      body: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                    padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FormTextField(hintText: 'Enter Your Name'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Enter Your Email Address'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Enter Your Password'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Confirm Password'),
                      SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: (){
                          //next page
                          print('submit');
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
                            child: Text('REGISTER', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],


          ),
        ),
      ),
    );
  }
}
