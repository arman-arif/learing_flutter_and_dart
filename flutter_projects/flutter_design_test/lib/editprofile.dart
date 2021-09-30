import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Your Profile"),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 25,
            color: Colors.white70,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white70,
            ),
            iconSize: 25,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white70,
            ),
            iconSize: 25,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white70,
            ),
            iconSize: 25,
            onPressed: () {},
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(10),
          height: 450,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(
              width: 5,
              style: BorderStyle.solid,
              color: Colors.orangeAccent,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 190,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.white70,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage("images/profile-photo.jpg"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      width: 140,
                      height: 45,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: Colors.deepOrange,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Select Image",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ariful Islam",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.green.shade900,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.create_outlined,
                            color: Colors.green.shade900,
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "atarmanarif@gmail.com",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade900,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.create_outlined,
                            color: Colors.green.shade900,
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        )
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lorem Ipsum is simply \ndummy text of the printing \nand typesetting industry.",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.green.shade900,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.create_outlined,
                              color: Colors.green.shade900,
                            ),
                            iconSize: 25,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
