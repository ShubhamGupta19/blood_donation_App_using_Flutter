import 'package:blooddonation/components/TableRowElement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/constants.dart';

class ConfirmAppointment extends StatefulWidget {
  static String id = "LoginSignup";

  @override
  ConfirmAppointmentState createState() => ConfirmAppointmentState();
}

class ConfirmAppointmentState extends State<ConfirmAppointment> {
  String name = 'Shubham';
  String age = '20';
  String ApptCenter = 'Baburao Blood Bank';
  String apptDate = '24/04/20';
  String apptTime = '13:00';
  String bloodGrp = 'B+';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Confirm Appointment'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.grey[300],
                child: Table(
                  defaultColumnWidth: FractionColumnWidth(0.30),
                  children: [
                    TableRow(children: <Widget>[
                      TableRowElement(
                        filedName:  'Name',
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
                        filedName: 'Appointment Center',
                        textStyle: kConfirmPageLabelTextStyle,
                      ),
                      TableRowElement(
                        filedName: '$ApptCenter',
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

                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 4.0,
                onPressed: () {
                 /* Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ConfirmAppointment()));*/
                },
                child: Container(
                  child: Text(
                    " Confirm",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
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


//Table row elements for confirm page extracted here to optimize the code

