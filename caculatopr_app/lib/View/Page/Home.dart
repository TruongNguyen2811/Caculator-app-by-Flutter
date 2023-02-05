import 'package:caculatopr_app/View/Components/Buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
              Expanded(flex:3, child:Container(),),
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
                  buttons[index] == '%' ?
                  MyButtonOperator(
                    buttonText: buttons[index],
                  )
                  : buttons[index]=='='
                  ? MyButtonEqual(
                    buttonText: buttons [index],
                  )
                  : MyButton(
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
}