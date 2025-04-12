import 'package:examprac/add.dart';
import 'package:examprac/view.dart';
import 'search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Book()));
}

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          "Books",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.redAccent),
                currentAccountPicture: CircleAvatar(
                  child: Text("T"),
                ),
                accountName: Text("Tanya Christian"),
                accountEmail: Text("tanyachristian19@gmail.com")),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Add();
                },));
              },
              title: Text("Add Books"),
              leading: Icon(Icons.add),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return view();
                },));
              },
              title: Text("View Books"),
              leading: Icon(Icons.book),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Search();
                },));
              },
              title: Text("Search Books"),
              leading: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
