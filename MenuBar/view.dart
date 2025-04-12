import 'package:flutter/material.dart';

class view extends StatelessWidget {
   view({super.key});

  List<String> lstbook =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "View Book Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(itemCount: lstbook.length,itemBuilder: (context, index) {
              return Text(lstbook[index]);
            },)
          ],

        ),
      ),
    );
  }
}
