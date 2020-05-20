import 'package:blooddonation/screens/AppointmentDate.dart';
import 'package:blooddonation/screens/AppointmentsListOrg.dart';
import 'package:blooddonation/screens/CreateAppointment.dart';
import 'package:blooddonation/screens/HomeScreen.dart';
import 'package:blooddonation/screens/LoginSignup.dart';
import 'package:blooddonation/screens/OrganizationHome.dart';
import 'package:blooddonation/screens/ReviewAppointment.dart';
import 'package:blooddonation/screens/Welcome_Screen.dart';
import 'package:blooddonation/screens/email_login.dart';
import 'package:blooddonation/screens/individual_signup.dart';
import 'package:blooddonation/screens/pass_confirm.dart';
import 'package:blooddonation/screens/signup_as.dart';
import 'package:blooddonation/screens/police_profile.dart';
import 'package:blooddonation/screens/organizational_profile.dart';
import 'package:blooddonation/screens/mobile_number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Donation',
      theme: ThemeData(
       // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        AppointmentDate.id:(context)=>AppointmentDate(),
        CreateAppointment.id:(context)=>CreateAppointment(),
        AppointmentListOrg.id:(context)=>AppointmentListOrg(),
        AppointmentReview.id:(context)=>AppointmentReview(),
        OrganizationHome.id:(context)=>OrganizationHome(),
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginSignup.id:(context)=>LoginSignup(),
        EmailPage.id:(context)=>EmailPage(),
        SignUpAs.id:(context)=>SignUpAs(),
        IndividualSignUp.id:(context)=>IndividualSignUp(),
        Organization.id:(context)=>Organization(),
        PoliceProfile.id:(context)=>PoliceProfile(),
        VerifyNumber.id:(context)=>VerifyNumber(),
        HomeScreen.id:(context)=>HomeScreen(),
        PassConfirm.id:(context)=>PassConfirm(),
      },
    );
  }
}
