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
        title: Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
          ),
          iconSize: 20,
          color: Colors.white70,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_outlined),
            onPressed: () {},
            color: Colors.white70,
          ),
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {},
            color: Colors.white70,
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.white70,
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(top: 50),
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade200,
            border: Border.all(width: 5, color: Colors.blue.shade200),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.purple.shade100,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white54,
                    backgroundImage: AssetImage('images/profile-image-1.jpg'),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Select Image",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueAccent.shade100,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        border: Border.all(
                          width: 3,
                          color: Colors.blue.shade100,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ariful Islam",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.create,
                            color: Colors.white70,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        border: Border.all(
                          width: 3,
                          color: Colors.blue.shade100,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "atarmanarif@gmail.com",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Icon(
                            Icons.create,
                            color: Colors.white70,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        border: Border.all(
                          width: 3,
                          color: Colors.blue.shade100,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem Ipsum is simply dummy text \nof the printing and typesetting industry. \nLorem Ipsum has been the industry's \nstandard dummy text ever since ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          Icon(
                            Icons.create,
                            color: Colors.white70,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
