/*
Stack(
children: <Widget>[
Container(
height: screenSize.height / 4.2,
decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage('images/homebg3.jpg'),
fit: BoxFit.cover,
),
),
),
SafeArea(
child: SingleChildScrollView(
child: Column(
children: <Widget>[
SizedBox(height: screenSize.height / 6.4),
Center(
child: Container(
width: 140.0,
height: 140.0,
decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage('images/homeprofile.jpg'),
fit: BoxFit.cover,
),
borderRadius: BorderRadius.circular(80.0),
border: Border.all(
color: Colors.white,
width: 10.0,
),
),
),
),
Text(
'Shubham Gupta',
style: TextStyle(
fontFamily: 'Roboto',
color: Colors.black,
fontSize: 28.0,
fontWeight: FontWeight.w700,
),
),
ListView(
children: <Widget> [

],
)
],
),
),
),
],
),*/
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.green),
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Simple Card view'),
      ),
      body: new ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return Container(
            height: 130,
            child: Card(
//                color: Colors.blue,
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('images/hacker.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius:
                            BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext conext) {
                          return AlertDialog(
                            title: Text('Not in stock'),
                            content:
                            const Text('This item is no longer available'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Ok'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: Chip(
                          label: Text('@anonymous'),
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.green,
                          elevation: 10,
                          autofocus: true,
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
