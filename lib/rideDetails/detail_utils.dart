import 'package:flutter/material.dart';

class DetailUtils {
  final b2bYellow = Color(0xFFFED344);
  Widget getDate(DateTime dt) {
    Duration dif = dt.difference(DateTime.now());
    int days = dif.inDays;
    int hours = dif.inHours % (days * 24);
    int mins = dif.inMinutes % (dif.inHours * 60);
    int sec = dif.inSeconds % (dif.inMinutes * 60);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "Days",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 20,
                color: b2bYellow,
              ),
            ),
            Text(
              "$days",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                color: b2bYellow,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              "Hours",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 20,
                color: b2bYellow,
              ),
            ),
            Text(
              "$hours",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                color: b2bYellow,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              "Minutes",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 20,
                color: b2bYellow,
              ),
            ),
            Text(
              "$mins",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                color: b2bYellow,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              "Seconds",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 20,
                color: b2bYellow,
              ),
            ),
            Text(
              "$sec",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                color: b2bYellow,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
