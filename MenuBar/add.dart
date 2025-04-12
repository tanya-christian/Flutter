import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text("Add Book Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(label: Text("Enter Book Name")),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(label: Text("Enter Author Name")),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              
            }, child: Text("Add"))
          ],
        ),
      ),
    );
  }
}
