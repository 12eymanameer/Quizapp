
import 'package:quizzapp/Cplusplus.dart';
import 'package:quizzapp/QuestionsC.dart';
import 'package:quizzapp/PassPage.dart';
import 'package:quizzapp/FailPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/Quizbrain.dart';
class Quizbrains{
  int _questionnumber=0;
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
void isfinished(){
  if(_questionnumber==questionsBank.length-1 ){
   print('finsih');
  }
}
void Checknextquestion(){
  if(_questionnumber<questionsBank.length-1 ){
  _questionnumber++;
  }
}
String  getQuestiontext(){
  return questionsBank[_questionnumber].questiontext;
}
bool getAnswertext(){
  return questionsBank[_questionnumber].questionanswer;
}}