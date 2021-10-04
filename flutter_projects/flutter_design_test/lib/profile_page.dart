import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          "Your Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_rounded),
        //   iconSize: 20,
        //   color: Colors.white70,
        //   onPressed: () {},
        // ),
        leading: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text('Home'),
          ),
        ),
        leadingWidth: 80,
        actions: [
          // Drawer(
          //   child: Column(

          //   ),
          // ),
          RaisedButton(
            // color: Colors.blue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text('Edit'),
            ),
          ),
        ],
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.refresh),
        //     iconSize: 20,
        //     color: Colors.white70,
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.home_filled),
        //     iconSize: 20,
        //     color: Colors.white70,
        //     onPressed: () {},
        //   )
        // ],
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Container(
          width: 350,
          height: 450,
          margin: EdgeInsets.only(top: 80),
          // padding: EdgeInsets.symmetric(
          //   horizontal: 30,
          //   vertical: 10,
          // ),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green.shade300,
                width: 5,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.green.shade200),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.green.shade400,
                            style: BorderStyle.solid,
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/profile-image-1.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Elena D'suza",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.green.shade800,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Khulna, Bangladesh",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green.shade600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
