import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Demo()) );
}

class Demo extends StatelessWidget {
   Demo({super.key});
  List<int> lstMarks = [];
  TextEditingController txtMarks = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(controller: txtMarks, decoration: InputDecoration(
              labelText: "Enter Number"
            ),),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: () {
                  int marks = int.parse(txtMarks.text);
                  lstMarks.add(marks);
                  print(lstMarks);
            }, child: Text("Enter")),
          ],
        ),
      ),
    );
  }
}

