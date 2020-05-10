import 'package:flutter/material.dart';

class PoliceProfile extends StatefulWidget {
  static String id = 'PoliceProfile';
  @override
  _PoliceProfileState createState() => _PoliceProfileState();
}

class _PoliceProfileState extends State<PoliceProfile> {
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Police Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xFFff316a),
      ),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
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
                      TextFieldCop(hintText: 'Name of the police station'),
                      TextFieldCop(hintText: 'Name of SHO'),
                      TextFieldCop(hintText: 'Location of police station'),
                      TextFieldCop(hintText: 'Contact Number'),
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

class TextFieldCop extends StatelessWidget {
  final String hintText;
  TextFieldCop({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0,
                    2.0), // shadow direction: bottom right
              )
            ],
          ),
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Colors.grey[100])),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "$hintText",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
