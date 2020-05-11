import 'package:blooddonation/components/FormTextField.dart';
import 'package:flutter/material.dart';

class Organization extends StatefulWidget {
  static String id = 'Organization';
  @override
  _OrganizationState createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(

      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Organizational SignUp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red,
      ),
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
                      FormTextField(hintText: 'Name of the orgnization'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Authorized Lead'),
                      SizedBox(height: 20.0),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  2.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Permission Letter:',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            RaisedButton(
                              onPressed: () {
                                print('upload doc');
                                //on pressed function
                              },
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'When was orgnization founded'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Headquarters Location'),
                      SizedBox(height: 20.0),
                      FormTextField(hintText: 'Contact number of authorized personnel'),
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

