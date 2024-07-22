import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/Loadingpage.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/SelectionPage.dart';


void main() {
  runApp(MaterialApp(
    home:Homepage(),
  )
  );
}


class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _State();
}

class _State extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Quiz App',
                    style: GoogleFonts.rajdhani(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed:() {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder:(context)=>Loadingpage()));
                        },
                      child:Image(
                            fit: BoxFit.cover,
                            height: 1000,
                        width: 1000,
                            image: NetworkImage('https://i.pinimg.com/originals/1c/d3/1a/1cd31a1f11bdcd6dc6c977312c8baa50.gif'),
                          ),
                        ),
                  ),

                ],
              ),
            ],
          ),
        ),

      ),

    );

  }
}
