import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/profile_page.dart';
import 'package:second_app/models/models.dart';

List<PostModel> postModels = [
  PostModel(
    username: "Mosharraf Karim",
    userImageUrl: "images/user_images/user_1.jpg",
    imageUrl: "images/posts/post_1.jpg",
    caption: "The Sixty Dome Mosque, is a mosque in Bagerhat, Bangladesh.",
    address: "Bagerhat,khulna,khulna,Bangladesh",
    likes: 234,
  ),
  PostModel(
    username: "Chanchal Chowdhury",
    userImageUrl: "images/user_images/user_2.jpg",
    imageUrl: "images/posts/post_2.jpg",
    caption: "Hiran point is a tourist spot in Sunderban.",
    address: "Hiron Point,Shatkhira,Khulna,Bangladesh",
    likes: 214,
  ),
  PostModel(
    username: "Abdur Rajjak",
    userImageUrl: "images/user_images/user_3.jpg",
    imageUrl: "images/posts/post_3.jpg",
    caption:
        "Hardinge Bridge is a steel railway truss bridge over the Padma River.",
    address: "Pakshi,Kushtia,Khulna,Bangladesh",
    likes: 233,
  ),
  PostModel(
    username: "Afran Nisho",
    userImageUrl: "images/user_images/user_4.jpg",
    imageUrl: "images/posts/post_4.jpg",
    caption: "Rabindranath Tagore's Shilaidaha Kuthibari",
    address: "Kushtia,Khulan,Bangaldesh",
    likes: 5676,
  ),
  PostModel(
    username: "Tawsif Mahbub",
    userImageUrl: "images/user_images/user_5.jpg",
    imageUrl: "images/posts/post_5.jpg",
    caption: "Khulna Khan Jahan Ali Rupsha Bridge",
    address: "Khulna,khulna,Bangaldesh",
    likes: 345,
  ),
  PostModel(
    username: "Shakib Al Hasan",
    userImageUrl: "images/user_images/user_6.jpg",
    imageUrl: "images/posts/post_6.jpg",
    caption: "Khunal Museum whish is a beautiful spot",
    address: "Shib_bari mor,Khulna,Khulna,Bangaldesh",
    likes: 3456,
  ),
  PostModel(
    username: "Mehidy Hasan Miraz",
    userImageUrl: "images/user_images/user_7.jpg",
    imageUrl: "images/posts/post_7.jpg",
    caption:
        "Important Information and Tourist place in khulna city (My Home Town)",
    address: "Shib_bari mor,Khulna,Khulna,Bangaldesh",
    likes: 234,
  ),
  PostModel(
    username: "Mashrafe Bin Mortaza",
    userImageUrl: "images/user_images/user_8.jpg",
    imageUrl: "images/posts/post_8.jpg",
    caption: "Motorcycle showroom address dealers in Narail Bangladesh",
    address: "Narail,Khulna,Bangladesh",
    likes: 345,
  ),
  PostModel(
      username: "Jaya Ahsan",
      userImageUrl: "images/user_images/user_9.jpg",
      imageUrl: "images/posts/post_9.jpg",
      caption:
          "The Independent Mongla Port sees record of anchoring ships in Feb",
      address: "Mongla,Khulna,Bangladesh",
      likes: 3489),
  PostModel(
      username: "Mushfiqur Rahim",
      userImageUrl: "images/user_images/user_10.jpg",
      imageUrl: "images/posts/post_10.jpg",
      caption: "Sundarban is a beautiful place at khulna ",
      address: "Sundarban,Khulna,Bangladesh",
      likes: 4347),
];

class PostPage extends StatefulWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(52, 152, 219, 0.9),
        title: Text("Posts Page"),
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white70,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostPage(),
                ),
              );
            },
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          itemCount: postModels.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              // height: MediaQuery.of(context).size.height / 1.28,
              // height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffc471ed),
                    Color(0xff12c2e9),
                    // Color(0xfffbd786),
                    // Color(0xffc6ffdd),
                    // Color(0xfff7797d),
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 33,
                          backgroundColor: Colors.white70,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("${postModels[index].userImageUrl}"),
                            radius: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: "${postModels[index].username}\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(255, 255, 255, 0.7),
                                fontSize: 22.5,
                              ),
                              children: [
                                TextSpan(
                                  text: "${DateTime.now()}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "${postModels[index].address}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "${postModels[index].caption}",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage("${postModels[index].imageUrl}"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(3),
                                // ),
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.heart,
                                  size: 15,
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                label: Text(
                                  "${postModels[index].likes} likes",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(235, 235, 235, 1)),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.chat_bubble,
                                  size: 15,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                label: Text(
                                  "Comments",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(235, 255, 255, 1)),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
