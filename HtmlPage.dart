import 'package:quizzapp/FailPage.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/PassPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class html extends StatefulWidget {


  @override
  State< html > createState() => _htmlState();
}

class _htmlState extends State<html > {
  List<IconData> scoreKeeper =[];
  List<Questions> questionsBank=[
    Questions(q: ' The alt attribute in the <img> tag is required and should be left empty if an image is purely decorative', a: false),
    Questions(q: '   The <iframe> element is used to embed external content within a web page, such as videos or maps.', a: true),
    Questions(q: '   HTML5 introduced the <article> element to represent a self-contained composition in a document, such as a blog post or news article.  ', a: true),
    Questions(q: '   The <script> tag can be placed anywhere within the HTML document, and the browser will execute it when encountered', a: false),
    Questions(q: ' The scoped attribute in the <style> tag restricts the styles within the tag to only apply to the elements within the same tag', a: true),
    Questions(q: '  HTML documents can contain multiple <header> and <footer> elements to define different sections of a page\'s header and footer.', a: true),
    Questions(q: '  The rel attribute in the <link> tag is used to specify the relationship between the current document and the linked document, such as "stylesheet" for linking CSS files. ', a: true),
    Questions(q: '   The <input> element with the type attribute set to "checkbox" can have both a value attribute and a label using the <label> element', a: false),
    Questions(q: '  The <br> tag is a block-level element used to create line breaks within paragraph', a: false),
    Questions(q: '  The target attribute in the <a> tag can be set to _self to open a linked page in a new tab or window', a: false),

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
                    if( t >7 && t<10) {
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

                    if( t >7 && t<10) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => PassPage()));
                    }else if ( t<7  ) {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => FailPage()));
                    }else{}
                  }});
              },
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