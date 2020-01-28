import 'package:flutter/material.dart';
import 'rides.dart';
import 'home.dart';
import 'profile.dart';

void main() => runApp(B2BApp());

class B2BApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike to the Beach',
      theme: ThemeData(
        primarySwatch: primaryBlue,
      ),
      home: B2BHomePage(title: 'Bike to the Beach home page.'),
    );
  }
}

class B2BHomePage extends StatefulWidget {
  B2BHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _B2BHomePageState createState() => _B2BHomePageState();
}

class _B2BHomePageState extends State<B2BHomePage> {
  final List<Widget> _children = [
    Home(),
    RidesTab(),
    Profile(),
  ];
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'b2bTitle.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assests/b2bTitle.png'),
                ),
              ),
            ],
          ),
        ),
        body: _children[_currentIndex],
      ),
    );
  }
}

MaterialColor primaryBlue = const MaterialColor(0xff075c93, const <int, Color>{
  50: Color(0xff075c93),
  100: Color(0xff075c93),
  200: Color(0xff075c93),
  300: Color(0xff075c93),
  400: Color(0xff075c93),
  500: Color(0xff075c93),
  600: Color(0xff075c93),
  700: Color(0xff075c93),
  800: Color(0xff075c93),
  900: Color(0xff075c93),
});
