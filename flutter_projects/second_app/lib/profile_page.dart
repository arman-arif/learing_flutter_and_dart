import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/edit_profile.dart';
import 'package:second_app/splash_screen.dart';

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
        actions: [
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side: BorderSide(
                width: 2,
                color: Colors.white,
                style: BorderStyle.solid,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.create,
                  size: 18,
                  color: Colors.white70,
                ),
                Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                )
              ],
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
          iconSize: 25,
          color: Colors.white70,
        ),
      ),
    );
  }
}
