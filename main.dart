// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:functional_calculator/widget/buttons.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  late int num1;
  late int num2;
  late String showMustGoOn = "";
  late String whatYouHaveDone = "";
  late String result;
  late String operation;

  void clickButton(String butttonValue){
    if(butttonValue == "AC"){
      showMustGoOn = "";
      result = "";
      num1 = 0;
      num2 = 0;
      whatYouHaveDone = "";
      operation = "";
    }

    else if(butttonValue == "C"){
      showMustGoOn = "";
      result = "";
      num1 = 0;
      num2 = 0;
    }

    else if(butttonValue == "<"){
      result = showMustGoOn.substring(0,showMustGoOn.length-1);
    }

    else if(butttonValue == "/"){
      num1 = int.parse(showMustGoOn);
      result = "";
      operation = butttonValue;
    }

    else if(butttonValue == "X"){
      num1 = int.parse(showMustGoOn);
      result = "";
      operation = butttonValue;
    }

    else if(butttonValue == "-"){
      num1 = int.parse(showMustGoOn);
      result = "";
      operation = butttonValue;
    }

    else if(butttonValue == "+"){
      num1 = int.parse(showMustGoOn);
      result = "";
      operation = butttonValue;
    }

    else if(butttonValue == "+/-"){
      if(showMustGoOn[0] != "-"){
        result = "-"+showMustGoOn;
      }else{
        showMustGoOn.substring(1);
      }
    }

    else if(butttonValue == "="){
      num2 = int.parse(showMustGoOn);
      if(operation == "+"){
        result = (num1 + num2).toString();
        whatYouHaveDone = num1.toString() + operation.toString() + num2.toString();
      }
      else if(operation == "-"){
        result = (num1 - num2).toString();
        whatYouHaveDone = num1.toString() + operation.toString() + num2.toString();
      }
      else if(operation == "X"){
        result = (num1 * num2).toString();
        whatYouHaveDone = num1.toString() + operation.toString() + num2.toString();
      }
      else if(operation == "/"){
        result = (num1 / num2).toString();
        whatYouHaveDone = num1.toString() + operation.toString() + num2.toString();
      }

    }
    else{
      result = int.parse(showMustGoOn + butttonValue).toString();
    }

    setState(() {
      showMustGoOn = result;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculator",            
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 25, 10),
                child: Text(
                  whatYouHaveDone,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.black54,
                    ),
                  ),
                  ),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 25, 10),
                child: Text(
                  showMustGoOn,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                  ),
              ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                calculatorButton(
                  value: "AC",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "C",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "<",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "/",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),
                
              ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                calculatorButton(
                  value: "9",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "8",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "7",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "X",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),
                
              ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                calculatorButton(
                  value: "6",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "5",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "4",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "-",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),
                
              ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
                calculatorButton(
                  value: "3",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "2",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "1",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "+",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),
                
              ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                calculatorButton(
                  value: "+/-",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "0",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "00",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),

                                calculatorButton(
                  value: "=",
                  color1: 0xFFFF5996EB,
                  pressed: clickButton,
                ),
                
              ],),

          ]
        ),
      ),
    );
  }
}