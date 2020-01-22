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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 175,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.grey.withOpacity(0.75), BlendMode.overlay),
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://biketothebeach.org/wp-content/uploads/2018/02/W3A8138_web.jpg"),
                  ),
                ),
              ),
            ),
            mainTextContent(),
          ],
        ),
      ),
    );
  }

  Container mainTextContent() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
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
      ),
    );
  }
}
