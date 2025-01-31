import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp1()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("This is my text."),
          Container(
              child: Text("This is my container."),
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(50)),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Container(
          child: Text("1"),
          color: Colors.red,
          padding: EdgeInsets.all(30),
        ),
        Container(
          child: Text("2"),
          color: Colors.brown,
          padding: EdgeInsets.all(50),
        ),
        Container(
          child: Text("3"),
          color: Colors.purpleAccent,
          padding: EdgeInsets.all(80),
        )
      ]),
    );
  }
}
