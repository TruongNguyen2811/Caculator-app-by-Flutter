import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? buttonText;

  MyButton({this.buttonText});
  @override
  Widget build(BuildContext context) {

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: Text(
              buttonText!,
              style: buttonText == 'C' 
              ? TextStyle(color:  Colors.green, fontSize: 40)
              : Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }
}

class MyButtonOperator extends StatelessWidget {
  final String? buttonText;

  MyButtonOperator({this.buttonText});
  @override
  Widget build(BuildContext context) {

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: Theme.of(context).buttonColor,
          child: Center(
            child: Text(
              buttonText!,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ),
      ),
    );
  }
}

class MyButtonEqual extends StatelessWidget {
  final String? buttonText;

  MyButtonEqual({this.buttonText});
  @override
  Widget build(BuildContext context) {

    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: Colors.green,
          child: Center(
            child: Text(
              buttonText!,
              style: TextStyle(color: Colors.white, fontSize: 40)
            ),
          ),
        ),
      ),
    );
  }
}