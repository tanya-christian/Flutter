import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Lstview()));
}

//list view with static data and single widget
class Lstview extends StatelessWidget {
  const Lstview ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemCount: 10,itemBuilder: (context, index) {
        return Text("Tanya");
      },),
    );
  }
}



//more than one widget in listview
class Lstview1 extends StatelessWidget {
  const Lstview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "List View Builder",
          ),
          centerTitle: true),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text("Tanya"),
              ListTile(
                title: Text("ABC"),
                subtitle: Text("abc@gmail.com"),
              )
            ],
          );
        },
      ),
    );
  }
}
