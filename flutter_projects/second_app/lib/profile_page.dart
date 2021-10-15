import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/edit_profile.dart';
import 'package:second_app/splash_screen.dart';

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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ),
                );
              },
              color: Colors.blue.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
                side: BorderSide(
                  width: 1,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.create,
                    size: 18,
                    color: Colors.white70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
          iconSize: 25,
          color: Colors.white70,
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            // height: MediaQuery.of(context).size.height - 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.orange.shade900,
                              style: BorderStyle.solid,
                              width: 2),
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white10,
                          image: DecorationImage(
                            image: AssetImage('images/profile.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sheikh Hasina',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              child: Text(
                                'National Parliament House, Sher-e-Bangla Nagar, Dhaka',
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Bio',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.info_outline,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 15),
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "Sheikh Hasina was born in Tungipara, East Pakistan, on 28 September 1947. Her father was Sheikh Mujibur Rahman, the founding father and the first President of Bangladesh. Her mother was Sheikh Fazilatunnesa Mujib. She has said in many interviews that she had grown up in fear due to her father's political works. She married physicist M. A. Wazed Miah in 1968, who was chosen for her by her father. During the peak of violence during the 1970 Pakistani general election, as well as her father's arrest, she had lived in refuge with her grandmother. She was active in the student politics of the University of Dhaka.",
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(top: 7, bottom: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.calendar_today_rounded,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      'Born:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text('September 28, 1947 (age 75 years)'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.person_outline,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      'Spouse:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text('M. A. Wazed Miah (m. 1967 - 2009)'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.my_library_books_outlined,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      'Writings:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          80,
                                      child: Text(
                                        'Black and White, People and Democracy, Living in Tears, etc',
                                        style: TextStyle(
                                          fontSize: 14,
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.group_outlined,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      'Children:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text('Sajeeb Wazed and Saima Wazed'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.menu_book_rounded,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      'Education:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          80,
                                      child: Text(
                                        'University of Dhaka (1973), Eden Mohila Collage',
                                        style: TextStyle(
                                          fontSize: 14,
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.collections_bookmark_rounded,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      'Awards:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          80,
                                      child: Text(
                                        'Indira Gandhi Prize f(2009), Mother of humanity by Channel 4',
                                        style: TextStyle(
                                          fontSize: 14,
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Description options ends
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RaisedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.message_outlined,
                                          size: 20,
                                        ),
                                      ),
                                      Text("Message"),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(
                                      width: 2,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.person_add_alt_1_outlined,
                                          size: 20,
                                        ),
                                      ),
                                      Text("Followers"),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(
                                      width: 2,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RaisedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.post_add,
                                          size: 20,
                                        ),
                                      ),
                                      Text("Posts"),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(
                                      width: 2,
                                      color: Colors.black54,
                                    ),
                                  ),
                                )
                              ],
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
      ),
    );
  }
}
