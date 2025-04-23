import 'dart:async';

import 'package:final_prac/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Home();
      },));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          
          Center(child: Image.asset("assets/dog.png",height: 150,)),
          Text(
            "WELCOME",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15.0),
          ),
        ]
      ),
    );
  }
}
