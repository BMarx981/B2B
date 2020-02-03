import 'package:flutter/material.dart';
import 'rides.dart';

class RideSelected extends StatefulWidget {
  static const id = 'rideSelected';
  @override
  _RideSelectedState createState() => _RideSelectedState();
}

class _RideSelectedState extends State<RideSelected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text("You have arrived")));
  }
}
