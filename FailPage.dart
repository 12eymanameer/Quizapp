import 'package:quizzapp/SelectionPage.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/Cplusplus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FailPage extends StatefulWidget {


  @override
  State<FailPage> createState() => _FailPageState();
}

class _FailPageState extends State<FailPage> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'You Failed Try Again',
                    style: GoogleFonts.rajdhani(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextButton(

                    onPressed:() {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder:(context)=>SelectionPage()));
                    },
                    child:Image(
                      fit: BoxFit.cover,
                      height: 480,
                       width: 1500,
                      image: NetworkImage('https://i.pinimg.com/originals/10/8a/27/108a273c92fdd74fac46847b07e8f750.gif'),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
