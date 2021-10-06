import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/profile_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
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
                builder: (context) => ProfilePage(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20,
          color: Colors.white70,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check),
            iconSize: 20,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
