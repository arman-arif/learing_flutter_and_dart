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
        backgroundColor: Color.fromRGBO(29, 90, 141, 1),
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
          iconSize: 30,
          color: Colors.white70,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
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
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    width: 3,
                  ),
                ),
                color: Color.fromRGBO(255, 255, 255, 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 18,
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
          ),
        ],
      ),
      body: Center(
        child: Text(
          "This is Profile Page",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(225, 50, 100, 1),
          ),
        ),
      ),
    );
  }
}
