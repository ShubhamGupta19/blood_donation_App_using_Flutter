import 'file:///D:/program%20files/AndroidStudioProjects/blood_donation/lib/screens/Welcome_Screen.dart';
import 'package:blooddonation/screens/AppointmentDate.dart';
import 'package:blooddonation/screens/AppointmentsListOrg.dart';
import 'package:blooddonation/screens/CreateAppointment.dart';
import 'package:blooddonation/screens/HomeScreen.dart';
import 'package:blooddonation/screens/LoginSignup.dart';
import 'package:blooddonation/screens/OrganizationHome.dart';
import 'package:blooddonation/screens/ReviewAppointment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OrganizationHome(),
      initialRoute: OrganizationHome.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginSignup.id:(context)=>LoginSignup(),

        AppointmentDate.id:(context)=>AppointmentDate(),
        CreateAppointment.id:(context)=>CreateAppointment(),


        AppointmentListOrg.id:(context)=>AppointmentListOrg(),
        AppointmentReview.id:(context)=>AppointmentReview(),
        OrganizationHome.id:(context)=>OrganizationHome(),
        HomeScreen.id:(context)=>HomeScreen(),


      },
    );
  }
}
