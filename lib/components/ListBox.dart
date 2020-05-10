import 'package:flutter/material.dart';
import 'package:blooddonation/screens/AppointmentDate.dart';

class ListBox extends StatelessWidget {
  final String title;
  final String description;
  final AssetImage logo;
  final Function onTap;
  //final bool isMe;

  const ListBox({this.title, this.description, this.logo,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 10.0,
      ),
      child: Material(
        elevation: 7.0,
        child: InkWell(
          onTap: onTap,
          child: Container(
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: logo,
                    height: 50.0,
                    width: 50.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$title',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$description',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}