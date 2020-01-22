import 'package:flutter/material.dart';

class RidesTab extends StatefulWidget {
  @override
  _RidesTabState createState() => _RidesTabState();
}

class _RidesTabState extends State<RidesTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Florida"),
          Text("New York"),
          Text("Washington DC"),
          Text("Maryland"),
          Text("New England"),
          Text("Texas"),
          Text("Bay Area"),
        ],
      ),
    );
  }
}
