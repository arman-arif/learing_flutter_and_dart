import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/followers_page.dart';
import 'package:second_app/models/models.dart';
import 'package:second_app/profile_page.dart';

List<MessageModel> messageModel = [
  MessageModel(
      username: 'Mosharraf Karim',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_1.jpg'),
  MessageModel(
      username: 'Chanchal Chowdhury',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_2.jpg'),
  MessageModel(
      username: 'Abdur Rajjak',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_3.jpg'),
  MessageModel(
      username: 'Afran Nisho',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_4.jpg'),
  MessageModel(
      username: 'Tawsif Mahbub',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_5.jpg'),
  MessageModel(
      username: 'Shakib Al Hasan',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_6.jpg'),
  MessageModel(
      username: 'Mehidy Hasan Miraz',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_7.jpg'),
  MessageModel(
      username: 'Mashrafe Bin Mortaza',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_8.jpg'),
  MessageModel(
      username: 'Jaya Ahsan',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_9.jpg'),
  MessageModel(
      username: 'Mushfiqur Rahim',
      lastMessage: 'Hello dear!',
      profilePicture: 'images/user_images/user_10.jpg'),
];

class MessagePage extends StatefulWidget {
  const MessagePage({Key key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message Page"),
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
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 30,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: Color(0xffd0d0d0),
                ),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: messageModel.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Color.fromRGBO(205, 205, 205, 0.9),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        messageModel[index].profilePicture,
                      ),
                      radius: 34,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 5,
                bottom: 20,
              ),
              child: Text(
                'Messages',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 300,
              child: ListView.builder(
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
                          backgroundImage: AssetImage(
                            messageModel[index].profilePicture,
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
                                  text:
                                      "Last Message: ${messageModel[index].lastMessage}",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
    );
  }
}
