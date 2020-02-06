import 'package:flutter/material.dart';
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

  Widget getDate() {
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
            Text("Days", style: TextStyle(fontFamily: "Roboto", fontSize: 20)),
            Text(
              "$days",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text("Hours", style: TextStyle(fontFamily: "Roboto", fontSize: 20)),
            Text(
              "$hours",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text("Minutes",
                style: TextStyle(fontFamily: "Roboto", fontSize: 20)),
            Text(
              "$mins",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text("Seconds",
                style: TextStyle(fontFamily: "Roboto", fontSize: 20)),
            Text(
              "$sec",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${widget.title} Ride Details"),
        ),
        body: Padding(
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
              getDate(),
            ],
          ),
        ),
      ),
    );
  }
}

/*<div class="upb_bg_overlay_pattern" style="background-image:url(https://biketothebeach.org/wp-content/plugins/Ultimate_VC_Addons/assets/images/patterns/01.png); opacity:0.8; ; background-attachment:scroll;"></div>
<div class="upb_row_bg vcpb-default" data-upb_br_animation="" data-parallax_sense="30" data-bg-override="ex-full" data-bg-animation="left-animation" data-bg-animation-type="h" data-animation-repeat="repeat" style="background-size: cover; background-repeat: repeat; background-color: rgba(0, 0, 0, 0); background-image: url(&quot;https://biketothebeach.org/wp-content/uploads/2019/10/W3A8941.jpg&quot;); background-attachment: scroll; min-width: 950px; left: 37.25px; width: 950px;"><div class="upb_bg_overlay" style="background-color:rgba(0,0,0,0.41);"></div><div class="upb_bg_overlay_pattern" style="background-image:url(https://biketothebeach.org/wp-content/plugins/Ultimate_VC_Addons/assets/images/patterns/01.png); opacity:0.8; ; background-attachment:scroll;"></div></div>
 */
