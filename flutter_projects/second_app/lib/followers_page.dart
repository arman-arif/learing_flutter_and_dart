import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/profile_page.dart';


class FollowersPage extends StatefulWidget {
  const FollowersPage({Key key}) : super(key: key);

  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Followers Page"),
        actions: [],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
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
