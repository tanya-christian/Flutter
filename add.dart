import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
   MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   

  TextEditingController txtnum1 = new TextEditingController();
  TextEditingController txtnum2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    int sum;
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Enter number for Addition"),
            TextField(controller: txtnum1,
              decoration: InputDecoration(labelText: "Number 1"),
            ),
            SizedBox(height: 10),
            TextField(controller: txtnum2,
              decoration: InputDecoration(labelText: "Number 2"),
            ),
            SizedBox(height: 25),
            ElevatedButton(onPressed: () {
                setState(() {
                  int n1 = int.parse(txtnum1.text);
                  int n2 = int.parse(txtnum2.text);
                  sum = n1+n2;
                  

                });
            }, child: Text("Add")),
            Text("The Addition of num 1 and num 2 is:" + sum.toString())
          ],
        ),
      ),
    );
  }
}
