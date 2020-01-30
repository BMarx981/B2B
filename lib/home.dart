import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
//            _supporters(),
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
                color: Color(0xff075c93),
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
              color: Color(0xff075c93),
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
            color: Color(0xff075c93),
          ),
        ), // yellowCircle
        Text(
          numbers,
          style: TextStyle(
            fontSize: 30,
            color: Color(0xff075c93),
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
