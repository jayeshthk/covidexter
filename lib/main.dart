import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          Column(children: <Widget>[
            Image.network(
                "https://i.pinimg.com/originals/f6/af/7b/f6af7bcdc152e52d0bcc177ef2acbd8d.gif")
          ])
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
