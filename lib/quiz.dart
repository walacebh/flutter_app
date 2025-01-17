import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function respondaasQuestoes;

  Quiz({@required this.questions,@required this.respondaasQuestoes,@required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(
              questions[questionIndex]['questionText'], 
              ),
                ...( questions [questionIndex]['answer'] as List<Map<String, Object>>).map((answer){
                   return Answer(() => respondaasQuestoes(answer['score']), answer['text']);
                 }).toList()
               ],
             
            );
            
  }
}