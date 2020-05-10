import 'package:blooddonation/screens/CreateAppointment.dart';
import 'package:blooddonation/screens/ReviewAppointment.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/components/ListBox.dart';
import 'Welcome_Screen.dart';
import 'CreateAppointment.dart';


class AppointmentListOrg extends StatefulWidget {
  static String id = "Appointsment List";

  @override
  AppointmentListOrgState createState() => AppointmentListOrgState();
}

class AppointmentListOrgState extends State<AppointmentListOrg>
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Appointment List'),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Today\'s Appointments',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[900],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              ListBox(
                logo: AssetImage('images/defaultAvatar.png'),
                title: 'Shubham Gupta',
                description: '25, May 2020',
                onTap: () {
                  //Navigate to next page
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentReview()));
                },
              ),
              ListBox(
                description: '20, May 2020',
                logo: AssetImage('images/defaultAvatar.png'),
                title: 'Abhishek Bhandwalkar ',

              ),
              // OrganizationStream(), //To be added after the Firebase is connected
              // and the Organization box to be removed from here
              Container(),
            ],
          ),
        ),
      ),
    );
  }

}