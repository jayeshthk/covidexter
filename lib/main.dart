import 'package:flutter/material.dart';
import 'package:profiledemo/Geographical%20impact.dart';
import 'dart:io';
import 'package:profiledemo/history.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Colors.white,
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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset("images/covo.gif"),
              Row(children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Features",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.settings,
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        showAlertDialog(context);
                      },
                      child: Text(
                        'Government directive',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.message,
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        showAlertDialog1(context);
                      },
                      child: Text(
                        'Faqs',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 13,
                  ),
                  Row(children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.house_rounded,
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        showAlertDialog2(context);
                      },
                      child: Text(
                        'Corona hospitals',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.perm_phone_msg_rounded,
                      size: 35,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        showAlertDialog3(context);
                      },
                      child: Text(
                        'Helpline no',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ])
                ],
              ),
              SizedBox(
                height: 40,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Historycovid()));
                },
                heroTag: "bt1",
                icon: Icon(Icons.history),
                label: Text("History"),
              ),
              SizedBox(
                height: 40,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GeographicalImpact()));
                },
                heroTag: "btn2",
                icon: Icon(Icons.location_on),
                label: Text("Geographical impact"),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundImage: AssetImage("images/er.png"),
        radius: 50,
        child: Builder(
          builder: (context) => IconButton(
            icon: ImageIcon(null),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Color(0xffffc107),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            DrawerHeader(
              child: Container(
                child: Text(
                  'Preventive measures',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                height: 142,
                width: MediaQuery.of(context).size.width,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {});
                Navigator.of(context).pop();
              },
              child: Text(
                'Wear a mask',
                style: TextStyle(
                  color: Color(0xffffc107),
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Clean your hands.',
                style: TextStyle(
                  color: Color(0xffffc107),
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Maintain safe distance.',
              style: TextStyle(
                color: Color(0xffffc107),
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              ' Get vaccinated.',
              style: TextStyle(
                color: Color(0xffffc107),
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45,
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Made with ❤ by Sumit Jain & Jayesh Thakare ',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Government directives"),
    content: Text(
        "There is enough for everything,everyday for everyone Don't Panic | Don't Rush | Don't Overstock "),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog1(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Faqs"),
    content: Text(
        "Corona viruses are a large family of viruses which may cause illness in animals or humans. In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog2(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Corona Hospitals"),
    content: Text(
        "Truecaller COVID-19 Healthcare Directory launched in India to help find COVID hospitals near you"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog3(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Helpline Numbers"),
    content: Text("104 Health Helpline ,For Tele-Communication: 6366449060 "),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
