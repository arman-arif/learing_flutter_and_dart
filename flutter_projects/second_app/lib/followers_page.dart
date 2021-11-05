import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/profile_page.dart';
import 'models/models.dart';

class FollowersPage extends StatefulWidget {
  const FollowersPage({Key key}) : super(key: key);

  @override
  _FollowersPageState createState() => _FollowersPageState();
}

List<FollowerModel> followerModel = [
  FollowerModel(
    username: "Afran Nisho",
    profilePicture: "https://cutt.ly/0R5WZyk",
    friends: 543,
  ),
  FollowerModel(
    username: "Mashrafe Mortaza",
    profilePicture: "https://cutt.ly/dR5b1zC",
    friends: 223,
  ),
  FollowerModel(
      username: "Shakib Al Hasan",
      profilePicture: "https://cutt.ly/bR5WNWh",
      friends: 554),
  FollowerModel(
      username: "Tamim Iqbal",
      profilePicture: "https://cutt.ly/lR5W1Iu",
      friends: 432),
  FollowerModel(
      username: "Abdurrahman Wahid",
      profilePicture: "https://cutt.ly/HR5bL4o",
      friends: 323),
  FollowerModel(
      username: "Abdul Qadeer Khan",
      profilePicture: "https://cutt.ly/hR5EtPa",
      friends: 334),
  FollowerModel(
      username: "Mushfiqur Rahim",
      profilePicture: "https://cutt.ly/OR5EyJQ",
      friends: 324),
  FollowerModel(
      username: "Mustafizur Rahman",
      profilePicture: "https://cutt.ly/FR5bCg0",
      friends: 786),
  FollowerModel(
      username: "Soumya Sarkar",
      profilePicture: "https://cutt.ly/lR5bBf4",
      friends: 667),
  FollowerModel(
      username: "Liton Dus",
      profilePicture: "https://cutt.ly/xR5Eit4",
      friends: 837),
];

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          itemCount: followerModel.length,
          itemBuilder: (BuildContext context, int index) => Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 1,
                color: Color(0xffd0d0d0),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color.fromRGBO(205, 205, 205, 0.9),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      followerModel[index].profilePicture,
                    ),
                    radius: 34,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: followerModel[index].username + "\n",
                        style: TextStyle(
                          color: Color.fromRGBO(44, 62, 80, 1.0),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                        ),
                        children: [
                          TextSpan(
                            text: "Friends: ${followerModel[index].friends}",
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 16,
                              color: Color.fromRGBO(127, 140, 141, 1.0),
                            ),
                          ),
                        ],
                      ),
                    ),
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
