import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/profile_page.dart';
import 'package:second_app/models/models.dart';

List<FollowingModel> followingModel = [
  FollowingModel(
    username: 'Mosharraf Karim',
    profileImageUrl: 'images/user_images/user_1.jpg',
    date: DateTime.now().toString(),
  ),
  FollowingModel(
    username: 'Chanchal Chowdhury',
    profileImageUrl: 'images/user_images/user_2.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Abdur Rajjak',
    profileImageUrl: 'images/user_images/user_3.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Afran Nisho',
    profileImageUrl: 'images/user_images/user_4.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Tawsif Mahbub',
    profileImageUrl: 'images/user_images/user_5.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Shakib Al Hasan',
    profileImageUrl: 'images/user_images/user_6.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Mehidy Hasan Miraz',
    profileImageUrl: 'images/user_images/user_7.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Mashrafe Bin Mortaza',
    profileImageUrl: 'images/user_images/user_8.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Jaya Ahsan',
    profileImageUrl: 'images/user_images/user_9.jpg',
    date: DateTime.now().hour.toString(),
  ),
  FollowingModel(
    username: 'Mushfiqur Rahim',
    profileImageUrl: 'images/user_images/user_10.jpg',
    date: DateTime.now().hour.toString(),
  ),
];

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
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          itemCount: followingModel.length,
          itemBuilder: (BuildContext context, int index) => Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      // Colors.orangeAccent,
                      Colors.greenAccent,
                      Colors.blueAccent
                    ])),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    followingModel[index].profileImageUrl,
                  ),
                  radius: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        followingModel[index].username,
                        style: TextStyle(
                          color: Color.fromRGBO(241, 226, 15, 1.0),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        followingModel[index].date + " hours ago",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xffeeffee),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
