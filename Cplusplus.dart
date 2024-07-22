import 'package:quizzapp/FailPage.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/PassPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Cplusplus extends StatefulWidget {


  @override
  State<Cplusplus> createState() => _CplusplusState();
}

class _CplusplusState extends State<Cplusplus> {
  List<IconData> scoreKeeper =[];
  List<Questions> questionsBank=[
    Questions(q: ' In C++, the "cin" object is used for output', a: false),
    Questions(q: '   The "break" statement is used to terminate the loop and skip the remaining iterations', a: true),
    Questions(q: '   C++ supports both single-line (//) and multi-line (/* */) comments', a: true),
    Questions(q: '   The "malloc" function is used in C++ to allocate memory for variables', a: false),
    Questions(q: ' In C++, the "class" and "struct" keywords are used interchangeably to define user-defined data types', a: true),
    Questions(q: '    A reference variable in C++ is a pointer to another variable', a: true),
    Questions(q: '  The "cin" object is used for formatted output in C++', a: false),
    Questions(q: '   The "++" operator increments the value of a variable by 2', a: false),
    Questions(q: '  In C++, a function can only return a single value', a: true),
    Questions(q: '  A pointer in C++ is a variable that stores the memory address of another variable', a: true),

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
                      } else if( t >7 || t<10) {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => PassPage()));
                      } else{} }
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