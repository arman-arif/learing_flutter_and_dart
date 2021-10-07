import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:second_app/profile_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 100,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('images/splash_screen_image.png'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      width: 3,
                      color: Color.fromRGBO(0, 125, 255, 1),
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 4,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Welcome to Flutter Advance Design, ICT Division - Flutter Training",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blueAccent,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationThickness: 3,
                    height: 1.5,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(170, 138, 233, 0.5),
                  border: Border.all(
                    color: Color.fromRGBO(170, 138, 233, 1),
                    width: 4,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "ENTER",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(150, 50, 255, 1),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color.fromRGBO(150, 50, 255, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
