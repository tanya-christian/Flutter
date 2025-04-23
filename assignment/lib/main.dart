import 'package:flutter/material.dart';
import 'package:stu_management/GlobalData.dart';
import 'package:stu_management/home.dart';

void main() {
  runApp(MaterialApp(home:StudentData()) );
}

class StudentData extends StatefulWidget {
  const StudentData({super.key});

  @override
  State<StudentData> createState() => _StudentDataState();
}

class _StudentDataState extends State<StudentData> {
  TextEditingController txtusr = TextEditingController();
  TextEditingController txtpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalData.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Login Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Enter your Login Details",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextField(controller: txtusr,
                  decoration: InputDecoration(label: Text("Enter Username"))),
              TextField(controller: txtpass,
                  decoration: InputDecoration(label: Text("Enter Password"))),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                },));

              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
