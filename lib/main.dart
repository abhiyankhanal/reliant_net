import 'package:flutter/material.dart';
import 'package:reliant_net/src/crf_success.dart';
import 'src/crform.dart';
import 'src/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'RTN',
          theme: ThemeData(
           
            primarySwatch: Colors.blue,
      ),
     debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (_) => Home(),
        "/crform": (_) => Crform(),
        "/success": (_) => Success(),
      }
    );
  }
}
