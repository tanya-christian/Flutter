import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DynamicData()));
}

class DynamicData extends StatelessWidget {
   DynamicData({super.key});

  List<String> lstname = ["Tanya", "Sharry", "Amisha", "Freya", "Mahira"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Print Data from List"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: lstname.length,
        itemBuilder: (context, index) {
          return Text(lstname[index]);
        },
      ),
    );
  }
}
