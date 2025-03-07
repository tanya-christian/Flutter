import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Demo()) );
}

class Demo extends StatefulWidget {
   Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List<int> lstMarks = [];
  //int len = lstMarks.length();

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
                  setState(() {
                    int marks = int.parse(txtMarks.text);
                    lstMarks.add(marks);
                    //print("Marks of Students:{$lstMarks}");
                  });

            }, child: Text("Enter")),
            SizedBox(height: 20,),
            Text("Marks of Students:" + lstMarks.length.toString())
          ],
        ),
      ),
    );
  }
}

