import 'package:flutter/material.dart';
import 'Welcome_Screen.dart';
import 'package:blooddonation/components/TableRowElement.dart';
import 'package:blooddonation/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppointmentReview extends StatefulWidget {
  static String id = "Appointment review";

  @override
  AppointmentReviewState createState() => AppointmentReviewState();
}

class AppointmentReviewState extends State<AppointmentReview> {
  String name = 'Shubham';
  String email = '';
  String gender = '';
  String aadharNumber = '';
  String bloodGrp = 'B+';
  String address = '3-4-379, Flat#108,S.V basant Apts, Hyderabad 500027';
  String ailments = 'None';
  String pastHistory = '1';
  String donatedOrganization = 'IRCS';
  String nameOfDoctor = 'Dr. Mathur';
  String contactOfDoctor = '+91 9959497577';
  String age = '20';
  String apptCenter = 'Baburao Blood Bank';
  String apptDate = '24/04/20';
  String apptTime = '13:00';
  bool checkBoxValue = false;
  Function rejectOnPressed ;
  Function acceptOnPressed ;
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Appointment Status'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to accept the Appointment?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop();
               /* Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                    );
                    */

              },
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Review Appointment'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.grey[300],
                  child: Table(
                    defaultColumnWidth: FractionColumnWidth(0.5),
                    children: [
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Name',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$name',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Age',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$age',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Date',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$apptDate',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Time',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$apptTime',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Blood Group',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$bloodGrp',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Address',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$address',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Ailments',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$ailments',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Donation History',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$pastHistory',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Donated Organization',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$donatedOrganization',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Family Doctor Name',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$nameOfDoctor',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                      TableRow(children: <Widget>[
                        TableRowElement(
                          filedName: 'Family Doctor Contact:',
                          textStyle: kConfirmPageLabelTextStyle,
                        ),
                        TableRowElement(
                          filedName: '$contactOfDoctor',
                          textStyle: kConfirmPageValueTextStyle,
                        ),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: checkBoxValue,

                      onChanged: (value) {
                        if(value){
                          setState(() {
                            checkBoxValue = value;
                            rejectOnPressed = () {
                              //Code After it is Rejected
                            };
                            acceptOnPressed=(){
                              //Code After is is Accepted
                              print("Appointment Accepted");
                             _showMyDialog();
                            };
                          });
                        }
                        else{
                          setState(() {
                            checkBoxValue = false;
                            rejectOnPressed = null;
                            acceptOnPressed = null;
                          });
                        }

                      },
                    ),
                    Text(
                      'Contacted Family Doctor?',
                      style: kConfirmPageLabelTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      elevation: 4.0,
                      onPressed:acceptOnPressed,
                      child: Container(
                        child: Text(
                          " Accept",
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      elevation: 4.0,
                      onPressed: rejectOnPressed,
                      child: Container(
                        child: Text(
                          " Reject",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
