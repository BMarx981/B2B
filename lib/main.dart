import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'rides.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike to the Beach',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bike to the Beach home page.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _children = [RidesTab()];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.directions_bike),
              title: new Text('Rides'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text('Profile'),
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
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
