import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LstDemo()));
}

class LstDemo extends StatefulWidget {
  const LstDemo({super.key});

  @override
  State<LstDemo> createState() => _LstDemoState();
}

class _LstDemoState extends State<LstDemo> {
  List<String> lst = [];
  TextEditingController txtname = TextEditingController();
  int selectedindx=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: txtname,
            decoration: InputDecoration(label: Text("Enter Name")),
          ),
          ElevatedButton(onPressed: () {
            lst.add(txtname.text);

            setState(() {
              
            });
          }, child: Text("Add")),
          Text("List Length"+lst.length.toString()),
          Text(lst.toString()),
          ElevatedButton(onPressed: () {
            lst.removeLast();
            setState(() {
            });
          }, child: Text("Delete"))
        ],
      ),
    );
  }
}
