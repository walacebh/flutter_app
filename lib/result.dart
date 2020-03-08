import 'package:flutter/material.dart';



class Result extends StatelessWidget {

final int resultScore;
final Function resetHandler;

Result(this.resultScore, this.resetHandler);

String get resultPhrase{
  String resultText ;

 if (resultScore <= 8 ){

   resultText = 'Voce e demais e inocente!';}
    else if (resultScore <= 12) {resultText='Muito bem!';}
    else if (resultScore <= 16){resultText = 'Voce e estranho!!!!';}
    else { resultText ='Voce e ruin hein, pqp!!';} 
  return  resultText;
}
  @override
  Widget build(BuildContext context) {
    return  Center(child: Column (children : <Widget>[ Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,),
    FlatButton(child: Text('Restart!'),
     textColor: Colors.redAccent,
     onPressed: resetHandler , ),
    ],
    
    ),);
          
        
  }
}