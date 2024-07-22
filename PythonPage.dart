import 'package:quizzapp/FailPage.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/PassPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/Quizbrain.dart';

class Pyhton extends StatefulWidget {
  const Pyhton({super.key});

  @override
  State<Pyhton> createState() => _PyhtonState();
}

class _PyhtonState extends State<Pyhton> {
  List<IconData> scoreKeeper =[];
  List<Questions> questionsBank=[
    Questions(q: ' In Python, indentation is not important and does not affect the code\'s execution', a: false),
    Questions(q: '   Python supports both single-line (//) and multi-line (/* */) comments. ', a: true),
    Questions(q: '   The \'break\' statement is used to terminate the loop and skip the remaining iterations', a: true),
    Questions(q: '  Python is a compiled programming language.', a: false),
    Questions(q: ' Lists in Python can contain elements of different data types', a: true),
    Questions(q: '    The \'append()\' method is used to remove an item from a list in Python. ', a: false),
    Questions(q: '  A variable name in Python can start with a number.', a: false),
    Questions(q: '   Python is not suitable for web development', a: false),
    Questions(q: '  The \'and\' operator in Python is used to perform a bitwise AND operation. ', a: false),
    Questions(q: '  Python\'s \'range()\' function returns a list of numbers starting from 1 to the specified value', a: false),

  ];
  int questionnumber=0;
  int totalnumber=0;
  int t=0;
  @override
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
                    if( t >7 && t<10) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => PassPage()));
                    } else if( t<7  ) {
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
                    }    if (questionnumber == questionsBank.length-1 )
                           {
                         if( t >7 && t<10) {
                            Navigator.push(context,
                          MaterialPageRoute(
                           builder: (context) => PassPage()));
                 } }}
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