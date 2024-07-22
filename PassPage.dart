import 'package:quizzapp/Loadingpage.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/Cplusplus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/SelectionPage.dart';

class PassPage extends StatefulWidget {
  const PassPage({super.key});

  @override
  State<PassPage> createState() => _PassPageState();
}

class _PassPageState extends State<PassPage> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Congrats You Passed',
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
                        height: 400,
                       // width: 1000,
                        image: NetworkImage('https://i.pinimg.com/originals/5e/3d/ed/5e3ded0309aebce41da957d9bd20f42b.gif'),
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
