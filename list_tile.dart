import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Demo()));
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo,
        centerTitle: true,title: Text("List Tile",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card( //creates border
                child: ListTile(
                  title: Text("Tanya"),
                  subtitle: Text("6786682178"),
                  leading: CircleAvatar( //front in front nd back you have to pass widgets
                    child: Text("T"),
                  ),
                  trailing: Icon(Icons.call), //back
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Sharry"),
                  subtitle: Text("5556682178"),
                  leading: CircleAvatar(
                    child: Text("S"),
                  ),
                  trailing: Icon(Icons.call),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Amisha"),
                  subtitle: Text("9086682178"),
                  leading: CircleAvatar(
                    child: Text("A"),
                  ),
                  trailing: Icon(Icons.call),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Freya"),
                  subtitle: Text("678668220"),
                  leading: CircleAvatar(
                    child: Text("F"),
                  ),
                  trailing: Icon(Icons.call),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
