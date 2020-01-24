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
    return Container(child: Center(child: Text("Welcome to the ride")));
  }
}
