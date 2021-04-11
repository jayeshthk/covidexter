import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:typed_data';

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
  File _image;
  ImagePicker picker = new ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: 5000,
                              height: 300,
                              child: Image.network(
                                  "https://images.thrillophilia.com/image/upload/s--6kfJr-kh--/c_fill,h_600,q_auto,w_975/f_auto,fl_strip_profile/v1/images/photos/000/183/282/original/1575443721_bike.png.jpg?1575443721"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      //likes and dislike as well as name and varification
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sudama sahu",
                            style: TextStyle(fontSize: 17),
                          ),
                          Icon(
                            Icons.verified,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xffffc107),
                            child: Icon(
                              Icons.thumb_up,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          FloatingActionButton(
                              backgroundColor: Color(0xffffc107),
                              child:
                                  Icon(Icons.thumb_down, color: Colors.grey)),
                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "MUM1234 | Mumbai | Photographer",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 30,
                      ),

                      //invite frnds and message
                      Row(
                        children: <Widget>[
                          FloatingActionButton.extended(
                              backgroundColor: Color(0xffffc107),
                              icon: Icon(
                                Icons.group_add_rounded,
                                color: Colors.black,
                              ),
                              onPressed: null,
                              label: Text(
                                "invite to your trip",
                                style: TextStyle(color: Colors.black),
                              )),
                          SizedBox(
                            width: 30,
                          ),
                          FloatingActionButton.extended(
                              backgroundColor: Color(0xffffc107),
                              icon: Icon(
                                Icons.message_outlined,
                                color: Colors.black,
                              ),
                              onPressed: null,
                              label: Text(
                                "Message",
                                style: TextStyle(color: Colors.black),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "| About Sudama :",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            " Take me anywhere and make me feel special."
                            " places you visit becomes a part of your personality somehow.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "| Recommended by 23 travellers :",
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56386987?s=460&u=ff8178925da2004cb8491cfcf6573972868872d7&v=4'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56386987?s=460&u=ff8178925da2004cb8491cfcf6573972868872d7&v=4'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56386987?s=460&u=ff8178925da2004cb8491cfcf6573972868872d7&v=4'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56386987?s=460&u=ff8178925da2004cb8491cfcf6573972868872d7&v=4'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56386987?s=460&u=ff8178925da2004cb8491cfcf6573972868872d7&v=4'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56386987?s=460&u=ff8178925da2004cb8491cfcf6573972868872d7&v=4'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56386987?s=460&u=ff8178925da2004cb8491cfcf6573972868872d7&v=4'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "| Sudama's Interests :",
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
                              Icons.electric_bike,
                              size: 35,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Road trips',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.beach_access,
                              size: 35,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Beaches',
                              style: TextStyle(fontSize: 20),
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
                              Icons.article_outlined,
                              size: 35,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Craft art',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.agriculture,
                              size: 35,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Agriculture',
                              style: TextStyle(fontSize: 20),
                            ),
                          ])
                        ],
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 200,
                                color: Colors.red,
                              )
                            ],
                          )),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 220,
                      ),
                      GestureDetector(
                        onTap: () {
                          _showPicker(context);
                        },
                        child: CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.black,
                          child: _image != null
                              ? ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.file(
                              _image,
                              width: 125,
                              height: 125,
                              fit: BoxFit.fitHeight,
                            ),
                          )
                              : Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(60)),
                            width: 125,
                            height: 125,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFffc107),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.90),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            title: Text('HOME'),
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            title: Text('Trips'),
            icon: Icon(Icons.wallet_travel),
          ),
          BottomNavigationBarItem(
            title: Text('Prima'),
            icon: Icon(Icons.landscape),
          ),
          BottomNavigationBarItem(
            title: Text('Notification'),
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            title: Text('Travel'),
            icon: Icon(Icons.directions_run_sharp),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.lightbulb),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Color(0xffffc107),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            DrawerHeader(
              child: Container(
                child: Text(
                  "💡"
                  'Tips'
                  "💡",
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
                'Always arrange first meet at public place',
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
                'Be smart ,Abide COVID norms.carry cash and working mobile',
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
              'varify all the factors and beneficiary before leaving',
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
              'Before meeting another travellers first meet them using video call',
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
  _imgFromCamera() async {
    PickedFile file = await  picker.getImage(source: ImageSource.camera, imageQuality: 50);
    Uint8List bytes = await file.readAsBytes();



    setState(() {
    if (file != null) {
    _image = File(file.path);
    } else {
    print('No image selected.');
    }
    });
  }


  _imgFromGallery() async {
    PickedFile file = await  picker.getImage(source: ImageSource.gallery, imageQuality: 50);
    Uint8List bytes = await file.readAsBytes();



    setState(() {
      if (file != null) {
        _image = File(file.path);
      } else {
        print('No image selected.');
      }
    });
  }
  _clearImage() async {
    setState(() {
      _image = null;

    });
  }
  Widget _setImageView() {
    return Scaffold(
      body: SafeArea(
        
        child: Center(
          child: GestureDetector(

            child: Image.network(
              'https://flutter-examples.com/wp-content/uploads/2019/09/image_button.png',
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                  new ListTile(
                    leading: new Icon(Icons.delete),
                    title: new Text('Remove Image'),
                    onTap: () {
                      _clearImage();
                      Navigator.of(context).pop();
                    },
                  ),
                  new ListTile(
                    leading: new Icon(Icons.delete),
                    title: new Text('Show Image'),
                    onTap: () {
                      _setImageView();
                      Navigator.of(context).pop();
                      print("called");
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}

