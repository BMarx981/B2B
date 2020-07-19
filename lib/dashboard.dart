import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Dashboard extends StatefulWidget {
  final String email;
  final String password;

  Dashboard({this.email, this.password});
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: WebView(
          initialUrl: "https://www.google.com",
        ),
      ),
    );
  }
}
