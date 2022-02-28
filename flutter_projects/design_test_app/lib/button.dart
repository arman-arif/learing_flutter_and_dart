import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonHome extends StatefulWidget {
  const ButtonHome({Key key}) : super(key: key);

  @override
  _ButtonHomeState createState() => _ButtonHomeState();
}

class _ButtonHomeState extends State<ButtonHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.amberAccent,
          ),
          iconSize: 25,
          onPressed: () {
            // Not Implemented
          },
        ),
        title: Text(
          "My Profile",
          style: TextStyle(
            color: Colors.teal.shade50,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.amberAccent,
            ),
            iconSize: 25,
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Align(
        child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(
              color: Colors.blueGrey,
              width: 7,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                ),
              ),
              Container(
                width: 350,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Arman Arif',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "@armanarif",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildFlatButton("Edit Profile", Icons.create, 140.0),
                    buildFlatButton("Follow", Icons.person_add, 100.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  FlatButton buildFlatButton(String btnTitle, IconData btnIcon, num btnWidth) {
    return FlatButton(
      onPressed: () {
        //not implemented yet
      },
      child: Container(
        height: 50,
        width: btnWidth,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              btnIcon,
              color: Colors.white,
              size: 20,
            ),
            Text(
              btnTitle,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
