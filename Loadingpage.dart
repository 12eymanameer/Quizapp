import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quizzapp/SelectionPage.dart';
import 'dart:async';

class  Loadingpage extends StatefulWidget {

  @override
  State<Loadingpage > createState() => _State();
}

class _State extends State<Loadingpage > {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to the next screen after 5 seconds
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SelectionPage()),
      );
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.white,
        appBar:AppBar(
           backgroundColor: Colors.white ,
    iconTheme: IconThemeData(
    color: Color(0xFFED2350) //Other properties of the AppBar
        ),
        ),
        body: SpinKitDoubleBounce(
      color: Color(0xFFED2350),
      size: 80.0,
    ),
    );
  }
}
