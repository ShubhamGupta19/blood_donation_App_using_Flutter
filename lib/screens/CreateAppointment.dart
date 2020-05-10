
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/components/ListBox.dart';

import 'AppointmentDate.dart';


class CreateAppointment extends StatefulWidget {
  static String id = "LoginSignup";

  @override
  CreateAppointmentState createState() => CreateAppointmentState();
}

class CreateAppointmentState extends State<CreateAppointment> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Create Appointment'),
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
                  'Select the Organization:',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[900],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              ListBox(
                logo: AssetImage('images/redcrosslogo.jpg'),
                title: 'Red Cross Society',
                description:
                    '3-4-379, Opposite Petrole pump, Kachiguda, Hyderabad',
                onTap: () {
                  //Navigate to next page
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentDate()));
                },
              ),
              ListBox(
                description: 'Powder Gali, Goregaon East,Mumbai',
                logo: AssetImage('images/blooddrop.png'),
                title: 'BabuRao BloodBank',
                onTap: () {
                  //Navigate to next page
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppointmentDate()));
                },
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

/*class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestore
          .collection('Address')
          .orderBy("timestamp", descending: false)
          .snapshots(),

      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.redAccent,
            ),
          );
        }
        final messages = snapshot.data.documents.reversed;

        List<OrganizationBox> messageBubbles = [];
        for (var message in messages) {
          final messageText = message.data['text'];
          final messageSenderEmail = message.data['sender'];
          final timestamp = message.data['timestamp'];
          final messageSenderName = message.data['name'];

          */ /*final currentUser = loggedInUser.email;*/ /*

          final messageBubble = OrganizationBox(
           */ /* isMe: currentUser == messageSenderEmail,*/ /*
            sender: messageSenderEmail,
            text:  messageText,

          );
          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: messageBubbles,
          ),
        );
      },

    );
  }
}*/


