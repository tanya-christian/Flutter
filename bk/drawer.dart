import 'package:final_prac/add.dart';
import 'package:final_prac/search.dart';
import 'package:final_prac/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Menu()));
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Menu Bar"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.purpleAccent),
                  currentAccountPicture: CircleAvatar(
                    child: Text("T"),
                  ),
                  accountName: Text("Tanya"),
                  accountEmail: Text("tanya@gail.com")),
              ListTile(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return add();
                },));
              },
                title: Text("Add"),
                leading: Icon(Icons.add),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return view();
                  },));
                },
                title: Text("View"),
                leading: Icon(Icons.view_agenda),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return search();
                  },));
                },
                title: Text("Search"),
                leading: Icon(Icons.search),
              )
            ],
          ),
        ));
  }
}
