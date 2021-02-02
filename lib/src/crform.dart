import 'package:flutter/material.dart';
import 'package:reliant_net/constants/color.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:reliant_net/main.dart';
import 'crf_success.dart';
//import 'package:reliant_net/model/client_details.dart';

class Crform extends StatefulWidget {
  @override
  _CrformState createState() => _CrformState();
}

class _CrformState extends State<Crform> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // var _client = client();
  void handleSubmit() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainCol,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Client Registration Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
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
                  padding: const EdgeInsets.only(left:10.0,top: 10.0),
                  child: Text(
                    "General Details",
                    style: TextStyle(
                        color: mainCol,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(4.0),
                          elevation: 5.0,
                          shadowColor: shadow.withOpacity(0.5),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(),),
                                labelText: "Firstname"),
                            validator:
                                MinLengthValidator(1, errorText: "Empty"),
                            onChanged: (val) {
                              //_client.fname = val;
                            },
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(4.0),
                          elevation: 5.0,
                          shadowColor: shadow.withOpacity(0.5),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(),),
                                labelText: "LastName"),
                            validator:
                                MinLengthValidator(1, errorText: "Empty"),
                            onChanged: (val) {
                              //_client.fname = val;
                            },
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(4.0),
                          elevation: 5.0,
                          shadowColor: shadow.withOpacity(0.5),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(),),
                                labelText: "EmailAddress"),
                            validator:
                                EmailValidator(errorText: "Invalid email"),
                            onChanged: (val) {
                              //_client.fname = val;
                            },
                          ),
                        ),
                      ),
                      ElevatedButton(onPressed:() => Navigator.of(context).pushReplacementNamed("/success"),
                      
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Submit", style: TextStyle(color: mainCol,fontSize: 15.0),),
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
