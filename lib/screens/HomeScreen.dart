import 'package:blooddonation/screens/CreateAppointment.dart';
import 'package:blooddonation/screens/Welcome_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'LoginSignup.dart';

class HomeScreen extends StatefulWidget {
  static String id = "LoginSignup";

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Blood Donate'),
      ),
      body: Container(
        child: OrientationBuilder(
          builder: (context,orientation){
            return  GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: orientation == Orientation.portrait ? 2:4,
              children: <Widget>[
                HomeCard(
                  title: 'Create Appointment',
                  img: AssetImage('images/blooddrop.png'),
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAppointment()));
                  },
                ),
                HomeCard(
                  title: 'Manage Appointment',
                  img: AssetImage('images/manageapt.jpg'),
                ),
                HomeCard(
                  title: 'Appointment History',
                  img: AssetImage('images/apthistory.webp'),
                ),
                HomeCard(
                  title: 'Account Details',
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

//Extracted the Card Widget
class HomeCard extends StatelessWidget {
  final AssetImage img;
  final String title;
  final  onTap;
  HomeCard({this.img, this.title,this.onTap});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      
      child: Card(

        child: InkWell(
          onTap: onTap,
          hoverColor: Colors.red,
          splashColor: Colors.red,
          child: Container(
            height: 165.0,
            width: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    image: img,
                    height: 90.0,
                    fit: BoxFit.contain,
                    width: 90.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 13.0,

                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        elevation: 7.0,
        margin: EdgeInsets.all(8.0),
      ),
    );
  }
}
