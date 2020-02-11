import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rideDetails/detail_utils.dart';
import 'rideDetails/florida.dart';
import 'rideDetails/new_england.dart';
import 'rideDetails/new_york.dart';
import 'rideDetails/bay_area.dart';
import 'rideDetails/texas.dart';
import 'rideDetails/washingtondc.dart';
import 'rideDetails/maryland.dart';

class RideSelected extends StatefulWidget {
  static const id = 'rideSelected';
  final String title;
  RideSelected({this.title});
  @override
  _RideSelectedState createState() => _RideSelectedState();
}

const b2bYellow = Color(0xFFFED344);

class _RideSelectedState extends State<RideSelected> {
  var dt = DateTime(2020, 2, 15, 5, 30);
  var details;
  var detailUtils = DetailUtils();

  @override
  initState() {
    super.initState();
    getCityWidget();
  }

  getCityWidget() {
    switch (widget.title) {
      case "Florida":
        details = FloridaDetails();
        dt = DateTime(2020, 2, 15, 5, 30);
        break;
      case "Washington DC":
        details = DCDetails();
        dt = DateTime(2020, 7, 31, 5, 30);
        break;
      case "New York":
        details = NewYorkDetails();
        dt = DateTime(2020, 6, 7, 5, 30);
        break;
      case "Maryland":
        details = MarylandDetails();
        dt = DateTime(2020, 7, 31, 5, 30);
        break;
      case "New England":
        details = NewEnglandDetails();
        dt = DateTime(2020, 9, 11, 5, 30);
        break;
      case "Bay Area":
        details = BayAreaDetails();
        dt = DateTime(2020, 4, 9, 5, 30);
        break;
      case "Texas":
        details = TexasDetails();
        dt = DateTime(2020, 10, 9, 5, 30);
        break;
      default:
        details = FloridaDetails();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(38.0),
            child: Hero(
              tag: 'title',
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage('assests/b2bTitle.png'),
              ),
            ),
          ),
//          title: Text("${widget.title} Ride Details"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.srcOver),
                    fit: BoxFit.fill,
                    image: AssetImage("assests/W3A8941.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: b2bYellow,
                      ),
                    ),
                    detailUtils.getDate(dt),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
