import 'package:flutter/material.dart';
import 'package:reliant_net/constants/color.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_height * 0.1),
        child: AppBar(
          title: Text("Reliant Net"),
          leading: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: MaterialButton(
                    minWidth: _width * 0.05,
                    onPressed: () {},
                    shape: CircleBorder(),
                    elevation: 2.0,
                    color: buttonCol,
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: _height * 0.05,
                        color: mainCol,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: mainCol,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
              child: Container(
                child: Container(
            //alignment: MainAxisAlignment.spaceEvenly,
            margin: EdgeInsets.all(10.0),
            height: _height * 0.21,
            decoration: BoxDecoration(
              color: bgCol,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: shadow.withOpacity(0.12),
                  spreadRadius: 9,
                  blurRadius: 9,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    "CRM",
                    style: TextStyle(
                        color: mainCol,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              
                                Navigator.of(context).pushReplacementNamed("/crform");
                              
                            },
                            elevation: 2.0,
                            color: buttonCol,
                            child: Icon(
                              Icons.person_add,
                              size: 35.0,
                              color: mainCol,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          SizedBox(height: 5.0),
                          Text("Add CLient"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {},
                            elevation: 2.0,
                            color: buttonCol,
                            child: Icon(
                              Icons.person,
                              size: 35.0,
                              color: mainCol,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          SizedBox(height: 5.0),
                          Text("Client List"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {},
                            elevation: 2.0,
                            color: buttonCol,
                            child: Icon(
                              Icons.person,
                              size: 35.0,
                              color: mainCol,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          SizedBox(height: 5.0),
                          Text("Dummy"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {},
                            elevation: 2.0,
                            color: buttonCol,
                            child: Icon(
                              Icons.person,
                              size: 35.0,
                              color: mainCol,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          SizedBox(height: 5.0),
                          Text("Dummy"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
