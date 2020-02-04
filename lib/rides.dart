import 'package:B2B/ride_selected.dart';
import 'package:flutter/material.dart';

class RidesTab extends StatefulWidget {
  @override
  _RidesTabState createState() => _RidesTabState();
}

class _RidesTabState extends State<RidesTab> {
  _rideTapped(context) {
    Navigator.pushNamed(
      context,
      RideSelected.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () => _rideTapped(context),
                child: RidesCity(
                  theDate: "February 15, 2020",
                  city: "Florida",
                  imageLink:
                      "https://i2.wp.com/biketothebeach.org/wp-content/uploads/2013/08/Miami.jpg?zoom=2&w=1200&ssl=1",
                ),
              ),
              GestureDetector(
                onTap: () => _rideTapped(context),
                child: RidesCity(
                  theDate: "June 5, 2020",
                  city: "New York",
                  imageLink:
                      "https://i0.wp.com/biketothebeach.org/wp-content/uploads/2013/08/9489311734_790298c1cb_z-e1485987040780.jpg?zoom=2&w=1200&ssl=1",
                ),
              ),
              GestureDetector(
                onTap: () => _rideTapped(context),
                child: RidesCity(
                  theDate: "July 31, 2020",
                  city: "Washington DC",
                  imageLink:
                      "https://i0.wp.com/biketothebeach.org/wp-content/uploads/2013/08/13815683164_d031d40350_z.jpg?zoom=2&w=1200&ssl=1",
                ),
              ),
              GestureDetector(
                onTap: () => _rideTapped(context),
                child: RidesCity(
                  theDate: "July 31, 2020",
                  city: "Maryland",
                  imageLink:
                      "https://i1.wp.com/biketothebeach.org/wp-content/uploads/2013/08/9550448611_7baa796d72_z-e1485987247873.jpg?zoom=2&w=1200&ssl=1",
                ),
              ),
              GestureDetector(
                onTap: () => _rideTapped(context),
                child: RidesCity(
                  theDate: "September 2020",
                  city: "New England",
                  imageLink:
                      "https://i1.wp.com/biketothebeach.org/wp-content/uploads/2013/08/15042356956_82e0cffd53_z.jpg?zoom=2&w=1200&ssl=1",
                ),
              ),
              GestureDetector(
                onTap: () => _rideTapped(context),
                child: RidesCity(
                  theDate: "Fall 2020",
                  city: "Texas",
                  imageLink:
                      "https://i0.wp.com/biketothebeach.org/wp-content/uploads/2013/08/6883513430_9f4c202325_z.jpg?zoom=2&w=1200&ssl=1",
                ),
              ),
              GestureDetector(
                onTap: () => _rideTapped(context),
                child: RidesCity(
                  theDate: "May 9, 2020",
                  city: "Bay Area",
                  imageLink:
                      "https://i0.wp.com/biketothebeach.org/wp-content/uploads/2019/01/Bay-Area-Pic-400x200.jpg?zoom=2&resize=400%2C200&ssl=1",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RidesCity extends StatelessWidget {
  final String city;
  final String imageLink;
  final String theDate;

  TextStyle tStyle(double size) {
    return TextStyle(
      shadows: [
        Shadow(
            // bottomLeft
            offset: Offset(-1.5, -1.5),
            color: Color(0xff075c93)),
        Shadow(
            // bottomRight
            offset: Offset(1.5, -1.5),
            color: Color(0xff075c93)),
        Shadow(
            // topRight
            offset: Offset(1.5, 1.5),
            color: Color(0xff075c93)),
        Shadow(
            // topLeft
            offset: Offset(-1.5, 1.5),
            color: Color(0xff075c93)),
      ],
      color: Color(0xFFFED344),
      fontFamily: "Roboto",
      fontSize: size,
    );
  }

  RidesCity({this.theDate, this.city, this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
            image: NetworkImage(imageLink),
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                city,
                style: tStyle(40),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Text(
                theDate,
                style: tStyle(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
