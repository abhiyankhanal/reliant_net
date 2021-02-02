import 'package:flutter/material.dart';
import 'package:reliant_net/constants/color.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: mainCol,title: Text("Success"),),
        body: Center(
      child: Padding(
        padding: const EdgeInsets.only(top:100.0),
        child: Column(
          children: <Widget>[
            Image(
              alignment: Alignment.center,
              image: AssetImage("assets/success.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Congractulations! Your record has been submitted",
                style: TextStyle(
                    fontSize: 20.0, color: mainCol, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
