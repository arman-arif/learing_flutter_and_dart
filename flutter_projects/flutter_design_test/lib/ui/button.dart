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
        title: Text("Button Home"),
        centerTitle: true,
      ),
    );
  }
}
