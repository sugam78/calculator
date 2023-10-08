
import 'package:calculator/Button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var input = '';
  var output = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.blue.shade600,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 150,),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(input.toString(),style: const TextStyle(fontSize: 30,color: Colors.white),),
                                Text(output.toString(),style: const TextStyle(fontSize: 30,color: Colors.white),),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ),
               Expanded(
                 flex: 3,
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Button(title: 'A/C', onpressed: (){
                           input = '';
                           output = '';
                           setState(() {

                           });
                         },),
                         Button(title: 'C',onpressed: (){
                           input = '';
                           setState(() {

                           });
                         },),
                         Button(title: '%',onpressed: (){
                           input += '%';

                           setState(() {

                           });
                         },),
                         Button(title: '/',color: const Color(0xffffa00a),onpressed: (){
                           input += '/';

                         setState(() {

                         });

                         },),
                       ],
                     ),
                     Row(
                       children: [
                         Button(title: '7', onpressed: (){
                           input += '7';

                           setState(() {

                           });
                         },),
                         Button(title: '8',onpressed: (){
                           input += '8';

                           setState(() {

                           });
                         },),
                         Button(title: '9',onpressed: (){
                           input += '9';

                           setState(() {

                           });
                         },),
                         Button(title: 'x',color: const Color(0xffffa00a),onpressed: (){
                           input += 'x';

                           setState(() {

                           });
                         },),
                       ],
                     ),
                     Row(
                       children: [
                         Button(title: '4', onpressed: (){
                           input += '4';

                           setState(() {

                           });
                         },),
                         Button(title: '5',onpressed: (){
                           input += '5';

                           setState(() {

                           });
                         },),
                         Button(title: '6',onpressed: (){
                           input += '6';

                           setState(() {

                           });
                         },),
                         Button(title: '-',color: const Color(0xffffa00a),onpressed: (){
                           input += '-';

                           setState(() {

                           });
                         },),
                       ],
                     ),
                     Row(
                       children: [
                         Button(title: '1', onpressed: (){
                           input += '1';

                           setState(() {

                           });
                         },),
                         Button(title: '2',onpressed: (){
                           input += '2';

                           setState(() {

                           });
                         },),
                         Button(title: '3',onpressed: (){

                           input += '3';

                           setState(() {

                           });
                         },),
                         Button(title: '+',color: const Color(0xffffa00a),onpressed: (){
                           input += '+';

                           setState(() {

                           });
                         },),
                       ],
                     ),
                     Row(
                       children: [
                         Button(title: '0', onpressed: (){
                           input += '0';

                           setState(() {

                           });
                         },),
                         Button(title: '.',onpressed: (){
                           input += '.';

                           setState(() {

                           });
                         },),
                         Button(title: 'Del',onpressed: (){
                           input = input.substring(0,input.length-1);

                           setState(() {

                           });
                         },),
                         Button(title: '=',color: const Color(0xffffa00a),onpressed: (){
                           onEqual();
                           setState(() {

                           });
                         },),
                       ],
                     ),
                   ],
                 ),
               ),
              ],
            ),
          ),

      ),
    );
  }

  void onEqual(){
    String finalUserInput = input.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    if(eval >=0 || eval<0){
      output = eval.toString();
    }
    else{
      output = 'Syntax error';
    }
  }
}

