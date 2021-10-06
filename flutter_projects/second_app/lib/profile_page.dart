import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/splash_screen.dart';
import 'package:second_app/edit_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
            );
          },
          icon: Icon(Icons.home_filled),
          iconSize: 20,
          color: Colors.white70,
        ),
        actions: [
          Container(
            width: 100,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                    ),
                  ),
                  Icon(
                    Icons.create_rounded,
                    size: 20,
                    color: Colors.white70,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
