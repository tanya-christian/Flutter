import 'package:flutter/material.dart';
import 'package:stu_management/GlobalData.dart';
import 'package:stu_management/Student.dart';
import 'package:stu_management/ViewDetails.dart';
import 'package:stu_management/add.dart';
import 'package:stu_management/editStudent.dart';
import 'package:stu_management/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalData.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return add();
                },
              ));
            },
            title: Text("Add Student Details"),
            leading: Icon(Icons.add),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingsPage();
              },));
            },
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
        ]),
      ),
      body: ListView.builder(
        itemCount: GlobalData.lststu.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              GlobalData.selectedindex = index;
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ViewDetails();
                },
              ));
            },
            onLongPress: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return editStudent();
                },
              )).then(
                (value) {
                  setState(() {});
                },
              );
            },
            title: Text(GlobalData.lststu[index].name),
            leading: CircleAvatar(
              child: Text(GlobalData.lststu[index].name[0]),
            ),
            subtitle: Text(GlobalData.lststu[index].email),
          );
        },
      ),
    );
  }
}
