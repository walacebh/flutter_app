import 'package:flutter/material.dart';


import './quiz.dart';
import './result.dart';

//void main() {
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _MyAppState();
  }
}

  class _MyAppState extends State<MyApp> {

  final _questions = const [
      {'questionText':'Qual sua cor favorita?', 'answer':[ {'text':'Black', 'score':10},{'text':'Red', 'score':5}, {'text':'Green','score':3}, {'text':'White','score':1}],},
      {'questionText':'Qual seu animal favorito?', 'answer':[ {'text':'cachorro', 'score':10},{'text':'gato', 'score':5}, {'text':'galinha', 'score':5}, {'text':'macaco','score':3}],},
      {'questionText':'Qual sua comida favorita?', 'answer':[ {'text':'macarrao','score':10},{'text':'salpicao','score':5}, {'text':'lasanha','score':3}, {'text':'feijoada', 'score':1}],},];
      
      
  var _questionIndex = 0;
  var _totalScore = 0;
  
  void _resetQuiz(){
    setState(() {
       _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _respondaasQuestoes(int score){
    //var aBool = true;
    //aBool= false;
   
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    
      if (_questionIndex < _questions.length) {
    print('Nos temos mais questoes!');
    } else{
      print('Sem mais perguntas!');
    }
  }

  @override
  Widget build(BuildContext contex) {
    
      //var dummy =const ['hello'];
      //dunny.add('max');
      //print (dunny);
      //dunny = [];
      //questions = [];// does not work if questions is const
    
    return MaterialApp(
      
        home: Scaffold(
          appBar: AppBar(
          title: Text('Perguntas'), backgroundColor: Colors.deepPurple,
          ),
        body: _questionIndex < _questions.length 
        ? Quiz(
          respondaasQuestoes:_respondaasQuestoes, 
          questionIndex: _questionIndex ,
          questions:_questions,
          )
        : Result(_totalScore, _resetQuiz),  
        
      ),
    
    );
  }
         
}
