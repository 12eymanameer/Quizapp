import 'package:flutter/material.dart';
import 'package:quizzapp/Cplusplus.dart';
import 'package:quizzapp/PythonPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweep_animation_button/sweep_animation_button.dart';
import 'package:quizzapp/Javapage.dart';
import 'package:quizzapp/HtmlPage.dart';
class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Stack(
              children:<Widget>[
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text(
                      'Select Language For Quiz',
                      style: GoogleFonts.rajdhani(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  Card(
                    color: Colors.black,
                    margin: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SizedBox(width: 2),

                           Row(
                             children: [
                               SweepAnimationButton(
                                 width: 250,
                                 height: 50,
                                 animationProgressColor: Colors.black,
                                 borderRadius: 0,
                                 animationColor: Colors.white,
                                 backroundColor: Colors.black,
                                 durationCircle: 1,
                                 hideIcon: true,
                                 child:  Text(
                                   ' C++ ',
                                   style: GoogleFonts.sourceSans3(
                                     fontSize: 20,
                                     color: Colors.white,

                                   ),
                                 ),
                                 onTap: () {
                                   Navigator.push(context,
                                       MaterialPageRoute(
                                           builder:(context)=>Cplusplus()));
                                 },
                               ),
                             ],
                           ),

                  ])
                    ),
                  ),
                  SizedBox(height: 3),
                    Card(
                      color: Colors.black,
                      margin: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                              children: [
                                SizedBox(width: 2),

                                Row(
                                  children: [
                                    SweepAnimationButton(
                                      width: 250,
                                      height: 50,
                                      animationProgressColor: Colors.black,
                                      borderRadius: 0,
                                      animationColor: Colors.white,
                                      backroundColor: Colors.black,
                                      durationCircle: 1,
                                      hideIcon: true,
                                      child:  Text(
                                        ' Pyhton ',
                                        style: GoogleFonts.sourceSans3(
                                          fontSize: 20,
                                          color: Colors.white,

                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder:(context)=>Pyhton()));
                                      },
                                    ),
                                  ],
                                ),

                              ])
                      ),
                    ),
                    Card(
                      color: Colors.black,
                      margin: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                              children: [
                                SizedBox(width: 2),

                                Row(
                                  children: [
                                    SweepAnimationButton(
                                      width: 250,
                                      height: 50,
                                      animationProgressColor: Colors.black,
                                      borderRadius: 0,
                                      animationColor: Colors.white,
                                      backroundColor: Colors.black,
                                      durationCircle: 1,
                                      hideIcon: true,
                                      child:  Text(
                                        ' Java ',
                                        style: GoogleFonts.sourceSans3(
                                          fontSize: 20,
                                          color: Colors.white,

                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder:(context)=>java()));
                                      },
                                    ),
                                  ],
                                ),

                              ])
                      ),
                    ),
                    Card(
                      color: Colors.black,
                      margin: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                              children: [
                                SizedBox(width: 2),

                                Row(
                                  children: [
                                    SweepAnimationButton(
                                      width: 250,
                                      height: 50,
                                      animationProgressColor: Colors.black,
                                      borderRadius: 0,
                                      animationColor: Colors.white,
                                      backroundColor: Colors.black,
                                      durationCircle: 1,
                                      hideIcon: true,
                                      child:  Text(
                                        ' Html ',
                                        style: GoogleFonts.sourceSans3(
                                          fontSize: 20,
                                          color: Colors.white,

                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder:(context)=>html()));
                                      },
                                    ),
                                  ],
                                ),

                              ])
                      ),
                    ),
                  ]
              ),
           ], ),
          ),
        ));
  }}


