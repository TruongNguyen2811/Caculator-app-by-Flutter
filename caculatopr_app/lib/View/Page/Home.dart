import 'package:caculatopr_app/View/Components/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var question = '0';
  var answer = '0';

  final List<String> buttons = [
    'C', 'Del', '%','/',
    '7', '8', '9','x',
    '4', '5', '6','-',
    '1', '2', '3','+',
    '', '0', ',','=',
  ];


  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: myHeight,
          width: myWidth,
          child: Column(
            children: [
              Expanded(flex:3, child:Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: myWidth*0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Text(question,
                            style: Theme.of(context).textTheme.displayMedium
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: myWidth*0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(answer,
                          style: Theme.of(context).textTheme.displaySmall
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ),
              Expanded(flex:6 , 
              child:GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
                itemBuilder: ((context, index) {
                  return buttons[index] == '/' ||
                  buttons[index] == 'x' ||
                  buttons[index] == '-' ||
                  buttons[index] == '+' ||
                  buttons[index] == '%' 
                  ? MyButtonOperator(
                    buttonTapped: () {
                      if(question=='0'){
                        question = '';
                        setState(() {
                          question = question + buttons[index];
                        });
                      }
                      else {
                        setState(() {
                          question = question + buttons[index];
                        });
                      }
                    },
                    buttonText: buttons[index],
                  )
                  : buttons[index]=='='
                  ? MyButtonEqual(
                    buttonTapped: (){
                      equalPressed();
                    },
                    buttonText: buttons [index],
                  )
                  : MyButton(
                    buttonTapped: (){
                      if(buttons[index]=='C'){
                        setState(() {
                          question = '0';
                          answer = '0';
                        });
                      }
                      else if (buttons[index]=='Del'){
                        setState(() {
                          question = question.substring(0,question.length-1);
                        });
                        if(question==''){
                          setState(() {
                            question = '0';
                          });
                        }
                      }
                      else {
                        if(question == '0'){
                          question='';
                          setState(() {
                            question = question +buttons[index];
                          });
                        }
                        else {
                          setState(() {
                            question = question +buttons[index];
                          });
                        }
                      }
                    },
                    buttonText: buttons[index],
                  );
                })
                ),
                ),
            ],
          ),
        ),
      ),
      );
  }
  equalPressed(){
    String finalQuestion = question;
    finalQuestion = finalQuestion.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel c = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, c);
    setState(() {
      answer = eval.toString();
    });
  }
}