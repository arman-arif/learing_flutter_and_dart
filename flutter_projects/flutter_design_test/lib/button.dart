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
          "Button Home",
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
    );
  }
}
