import 'package:flutter/material.dart';
import 'package:reliant_net/constants/color.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "Congractulations! Your record has been submitted",
          style: TextStyle(
              fontSize: 23.0, color: mainCol, fontWeight: FontWeight.w500),
        ),
      ),
    ));
  }
}
