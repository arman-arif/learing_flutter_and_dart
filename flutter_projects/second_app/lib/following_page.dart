import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/profile_page.dart';


class FollowingPage extends StatefulWidget {
  const FollowingPage({Key key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Following Page"),
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
