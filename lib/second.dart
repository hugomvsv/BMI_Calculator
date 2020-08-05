import 'package:flutter/material.dart';
import 'main.dart';




String cat;
class SecondRoute extends StatelessWidget {

  double x=calc(double.parse(weight.text.replaceAll(",", ".")), double.parse(height.text.replaceAll(",", ".")));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BMI CALCULATOR")
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 242, 244),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: 196,
              height: 28,
              margin: EdgeInsets.only(left: 86, top: 130),

              child: Text(
                "Your BMI",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontFamily: "Menlo",
                ),

                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 196,
              height: 28,
              margin: EdgeInsets.only(left: 86, top: 40),

              child: Text(
                "$x",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontSize: 24,
                  fontFamily: "Menlo",
                ),

                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 206,
              height: 28,
              margin: EdgeInsets.only(left: 86, top: 100),

              child: Text(
                "Your category ",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontFamily: "Menlo",
                ),

                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 196,
              height: 28,
              margin: EdgeInsets.only(left: 86, top: 40),

              child: Text(
                "$cat",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontSize: 24,
                  fontFamily: "Menlo",
                ),

                textAlign: TextAlign.center,
              ),
            ),

          ],
        ),
      ),

    );
  }}

double calc(double a, double p){
  double imc;
  imc= a/(p*p);
  if(imc<18.5){
    cat="Underweight";
  }
  else if(imc<24.9){
    cat="Normal";
  }
  else if(imc<30){
    cat="Overweight";
  }
  else{
    cat="Obese";
  }
  return imc ;
}


String category1(double xy){
  String a;
  if(xy<18.5){
    a="underweight";
  }
  else if(xy<24.9){
    a="normal";

  }
  else if(xy<30){
    a="overweight";
  }
  else{
    a="obese";
  }
  return a;
}
