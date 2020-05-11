import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:blooddonation/components/FormTextField.dart';

class IndividualSignUp extends StatefulWidget {
  static String id = 'IndividualSignUp';
  @override
  _IndividualSignUpState createState() => _IndividualSignUpState();
}

class _IndividualSignUpState extends State<IndividualSignUp> {
  var _gender = ['Male', 'Female', 'Others'];
  var _currentValueSelected = 'Male';
  var _bloodGroup = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
  var _bloodGroupSelected = 'A+';
  var _history = ['Yes', 'No'];
  var _historySelected = 'No';

  DateTime _currentDate = new DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime _selectDate = await showDatePicker(
        context: context,
        initialDate: _currentDate,
        firstDate: DateTime(1960),
        lastDate: DateTime(2060),
        builder: (context, child) {
          return SingleChildScrollView(child: child);
        });

    if (_selectDate != null) {
      setState(() {
        _currentDate = _selectDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    String _formattedDate = new DateFormat.yMMMd().format(_currentDate);
    return Scaffold(
      appBar: AppBar(
        title: Text('Individual Signup'),
        backgroundColor: Colors.red,
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
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          child:FormTextField(
                            hintText: 'Enter your name',
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      FormTextField(
                        hintText: 'Enter Your Email',
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  2.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'DOB:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '$_formattedDate',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 6.0),
                            IconButton(
                              onPressed: () {
                                _selectDate(context);
                              },
                              icon: Icon(Icons.calendar_today),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  2.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'GENDER:',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            DropdownButton<String>(
                              items: _gender.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(
                                    dropDownStringItem,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._currentValueSelected = newValueSelected;
                                });
                              },
                              value: _currentValueSelected,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      FormTextField(
                        hintText: 'enter aadhar number',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  2.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {
                                print('upload aadhar scanned copy');
                              },
                              child: Text(
                                'Upload Aadhar scanned copy',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  2.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'BLOOD GROUP:',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            DropdownButton<String>(
                              items:
                                  _bloodGroup.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(
                                    dropDownStringItem,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._bloodGroupSelected = newValueSelected;
                                });
                              },
                              value: _bloodGroupSelected,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      FormTextField(
                        hintText: 'Enter your address',
                      ),
                      SizedBox(height: 20.0),
                      FormTextField(
                        hintText: 'any known ailments',
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  2.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Past history of donation:',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            DropdownButton<String>(
                              items: _history.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(
                                    dropDownStringItem,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._historySelected = newValueSelected;
                                });
                              },
                              value: _historySelected,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      FormTextField(
                        hintText: "If yes which organization you donated to",
                      ),
                      SizedBox(height: 20.0),
                      FormTextField(
                        hintText: "Name and contact of family doctor",
                      ),
                      SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
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
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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


