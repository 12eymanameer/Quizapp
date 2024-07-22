import 'package:quizzapp/FailPage.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/PassPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class java extends StatefulWidget {


  @override
  State<java> createState() => _javaState();
}

class _javaState extends State<java> {
  List<IconData> scoreKeeper =[];
  List<Questions> questionsBank=[
    Questions(q: ' Binary search can be performed on an unsorted array in logarithmic time complexity', a: false),
    Questions(q: '   In Python, the pass statement does nothing and is often used as a placeholder', a: true),
    Questions(q: '   Object-oriented programming (OOP) is a programming paradigm that focuses on using classes and objects to design and build applications. ', a: true),
    Questions(q: '   Recursion is always more memory-efficient than iteration in programming', a: false),
    Questions(q: ' Recursion is always more memory-efficient than iteration in programming', a: true),
    Questions(q: '   SQL injection is a technique where malicious SQL statements are inserted into an application\'s input fields to manipulate the database', a: true),
    Questions(q: '  The Big O notation is used to describe the worst-case time complexity of an algorithm', a: true),
    Questions(q: '   IPv6 addresses are 128 bits long and are represented in hexadecimal notation', a: true),
    Questions(q: '  In JavaScript, the == operator performs type coercion, while the === operator performs strict equality checking', a: true),
    Questions(q: '  The "Monty Hall problem" is a probability puzzle that involves selecting a prize from three doors, and switching doors after one is revealed', a: true),

  ];
  int questionnumber=0;
  int totalnumber=0;
  int t=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex:5,
            child: Padding(
              padding:EdgeInsets.all(10) ,
              child: Center(
                child: Text(
                  questionsBank[questionnumber].questiontext,
                  textAlign: TextAlign.center,
                  style:GoogleFonts.rajdhani(fontSize: 30,color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Card(
            color:Colors.green,
            child: FloatingActionButton(
              backgroundColor:Colors.green,
              elevation: 0,

              child:Text(
                'True',
                textAlign: TextAlign.center,
                style:GoogleFonts.rajdhani(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold
                ),
              ),
              onPressed: (){
                bool correctans =questionsBank[questionnumber].questionanswer;
                if (correctans==true){
                  t=t+1;
                  scoreKeeper.add(Icons.check);
                }
                else {
                  t=t;
                  scoreKeeper.add(Icons.close);
                }
                setState(() {
                  questionnumber++;
                  print('questionnumber: $questionnumber');
                  print('t: $t');
                  if (questionnumber == questionsBank.length-1 )
                  {
                    if( t >7 || t<10) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => PassPage()));
                    } else if ( t<7  ) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => FailPage()));
                    }else{}
                  }});
              },
            ),
          ),

          Card(
            color:Colors.red,

            child: FloatingActionButton(
              backgroundColor:Colors.red,
              child:Text(
                'False',
                textAlign: TextAlign.center,
                style:GoogleFonts.rajdhani(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold

                ),
              ),
              elevation: 0,
              onPressed: (){

                bool correctans =questionsBank[questionnumber].questionanswer;
                if (correctans==false){
                  t=t+1;
                  scoreKeeper.add(Icons.check);}
                else {
                  t=t;
                  scoreKeeper.add(Icons.close);
                }


                setState(() {
                  questionnumber++;
                  print('questionnumber: $questionnumber');
                  print('t: $t');
                  if (questionnumber == questionsBank.length-1 ){

                    if( t<7  ) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => FailPage()));
                    } else if( t >7 || t<10) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => PassPage()));
                    } else{ }}
                });},
            ),
          ),

          Row(
            children: scoreKeeper.map((iconData) {
              if (iconData == Icons.check) {
                return Icon(
                  iconData,
                  color: Colors.green, // Change this to the desired color for correct answers
                );
              } else if (iconData == Icons.close) {
                return Icon(
                  iconData,
                  color: Colors.red, // Change this to the desired color for incorrect answers
                );
              }
              return Container(); // Return an empty container if the iconData is invalid
            }).toList(),
          )
        ],
      ),
    );
  }
}