import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final b2bBlue = Color(0xff075c93);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: <Widget>[
            // This is the main page's content
            mainTextContent(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset("assests/B2BEveryone.png"),
              ),
            ),
            aboutUsContent(),
            statsRow(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _whyWeBike(),
            ),
//            _supporters(),
          ],
        ),
      ),
    );
  }

  Container _whyWeBike() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1.5, color: b2bBlue),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "Why Bike With Us",
              style: TextStyle(
                color: b2bBlue,
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto",
                fontSize: 40.0,
              ),
            ),
            Text(
              "Bike to the Beach is here to empower your community, "
              "help you achieve your goals, surpass your personal challenges, "
              "and to raise funds for autism awareness. Join us and you will",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: b2bBlue,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assests/Bike-challenge-Fun-white.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Experience your town like never before in America's "
                          "only autism bike series.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: b2bBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assests/Bike-challenge-Fun-white.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Make an amazing impact in the autism community.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: b2bBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assests/ribbon.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Take on a new fitness challenge with all the details taken care of.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: b2bBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assests/puzzle-piece.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Meet new friends and enjoy a healthier life.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: b2bBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _supporters() {}

  Container mainTextContent() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Bike for ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold),
                ),
                RotateAnimatedTextKit(
                  totalRepeatCount: 10,
                  isRepeatingAnimation: true,
                  text: [
                    "the challenge",
                    "fun",
                    "friends",
                    "Autisim",
                  ],
                  textStyle: TextStyle(
                      color: Color(0xFFFED344),
                      fontSize: 30,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.bottomCenter,
                ),
              ],
            ),
//            Image.asset("assests/Autism-Speaks.png"),
          ],
        ),
      ),
    );
  }

  Container aboutUsContent() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "Who We Are",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: b2bBlue,
              ),
            ),
            Text(
                "Bike to the Beach is a community of people who combine biking, purpose, and fun to inspire individuals to overcome obstacles through personal challenge and to inspire the larger community to raise funds and awareness for Autism, the most prevalent developmental disability in the world.",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                )),
          ],
        ),
      ),
    );
  }

  Container statsRow() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "What We've Done",
            style: TextStyle(
              fontSize: 30,
              color: b2bBlue,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  whatWeDoColumn(Icons.directions_bike, "529K", "Miles Biked"),
                  whatWeDoColumn(Icons.attach_money, "4.5M", "Raised"),
                  whatWeDoColumn(Icons.location_city, "7", "Cities"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _yellowCircle(Icon icon) {
    return Container(
      width: 50.0,
      height: 50.0,
      child: icon,
      decoration: BoxDecoration(
        color: Color(0xFFFED344),
        shape: BoxShape.circle,
      ),
    );
  }

  Column whatWeDoColumn(IconData icon, String numbers, String info) {
    return Column(
      children: <Widget>[
        _yellowCircle(
          Icon(
            icon,
            size: 35,
            color: b2bBlue,
          ),
        ), // yellowCircle
        Text(
          numbers,
          style: TextStyle(
            fontSize: 30,
            color: b2bBlue,
          ),
        ),
        Text(
          info,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
          ),
        )
      ],
    );
  }
}
