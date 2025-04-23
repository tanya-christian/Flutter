import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Calculator()));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();

  String ans="";
  int num1=0;
  int num2=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller:txt1,
              decoration: InputDecoration(label: Text("Enter 1st Number")),
            ),
            TextField(  controller: txt2,
              decoration: InputDecoration(label: Text("Enter 2nd Number")),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                   num1 = int.parse(txt1.text);
                   num2 = int.parse(txt2.text);
                   ans = (num1+num2).toString();
                   setState(() {});

                }, child: Text("+")),
                ElevatedButton(onPressed: () {
                  num1=int.parse(txt1.text);
                  num2=int.parse(txt2.text);
                  ans=(num1-num2).toString();
                  setState(() {

                  });

               }, child: Text("-")),
                ElevatedButton(onPressed: () {
                   num1=int.parse(txt1.text);
                   num2=int.parse(txt2.text);
                   ans=(num1*num2).toString() ;
                   setState(() {

                   });
                }, child: Text("*")),
                ElevatedButton(onPressed: () {
                  num1=int.parse(txt1.text);
                  num2=int.parse(txt2.text);
                  ans=(num1/num2).toString();
                  setState(() {});
                }, child: Text("/")),
              ],
            ),
            SizedBox(height: 20),
            Text(ans)
          ],
        ),
      ),
    );
  }
}
