import 'package:blooddonation/screens/AppointmentsListOrg.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class OrganizationHome extends StatefulWidget {
  static String id = "LoginSignup";

  @override
  OrganizationHomeState createState() => OrganizationHomeState();
}

class OrganizationHomeState extends State<OrganizationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Organization Screen'),
      ),
      body: Container(
        child: OrientationBuilder(
            builder: (context,orientation){
              return  GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: orientation == Orientation.portrait ? 1:3,
                children: <Widget>[
                 /* HomeCard(
                    title: 'Create Appointment',
                    img: AssetImage('images/blooddrop.png'),
                    onTap:(){
                     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAppointment()));
                    },
                  ),*/
                  HomeCard(
                    title: 'Manage Appointments',
                    img: AssetImage('images/manageapt.jpg'),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentListOrg()));
                    },
                  ),
                 /* HomeCard(
                    title: 'Appointment History',
                    img: AssetImage('images/apthistory.webp'),
                  ),*/
                  HomeCard(
                    title: 'Organization Details',
                    img: AssetImage('images/account.png'),
                  )
                ],

              );
            }

        ),
      ),
    );
  }
}
