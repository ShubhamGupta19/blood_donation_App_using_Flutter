import 'package:blooddonation/components/FormTextField.dart';
import 'package:flutter/material.dart';

class PoliceProfile extends StatefulWidget {
  static String id = 'PoliceProfile';
  @override
  _PoliceProfileState createState() => _PoliceProfileState();
}

class _PoliceProfileState extends State<PoliceProfile> {
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Police Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xFFff316a),
      ),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: bottom),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FormTextField(hintText: 'Name of the police station'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Name of SHO'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Location of police station'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Contact Number'),
                      SizedBox(height: 30.0),
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
                            child: Text('SUBMIT', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

