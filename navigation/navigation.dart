import 'package:flutter/material.dart';
import 'navigationTo.dart';
void main() {
  runApp(MaterialApp(home: Demo()));
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text("First Page"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Demo1();
        },));
      },child: Icon(Icons.call),),

    );
  }
}
