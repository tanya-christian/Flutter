import 'package:flutter/material.dart';
import 'package:stu_management/Student.dart';
import 'package:stu_management/GlobalData.dart';
import 'package:stu_management/home.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtcourse = TextEditingController();
  double sldvalue=10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalData.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Add Student",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(controller:txtname ,
                decoration: InputDecoration(label: Text("Enter Student Name")),
              ),
              TextField(controller:txtemail ,
                decoration: InputDecoration(label: Text("Enter Student Email")),
              ),
              TextField(controller: txtcourse,
                decoration: InputDecoration(label: Text("Enter Course")),
              ),
              SizedBox(height:5),
              Text("Select Marks"),
              Slider(min:10,max:70,value: sldvalue, onChanged: (value) {
                    sldvalue = value;
                    setState(() {});
              },),
              Text(sldvalue.toInt().toString()),
              SizedBox(height:20),
              ElevatedButton(onPressed: () {
                Student obj = new Student();
                obj.name = txtname.text;
                obj.email = txtemail.text;
                obj.course = txtcourse.text;
                obj.marks = sldvalue.toInt();
                
                GlobalData.lststu.add(obj);
                print(GlobalData.lststu.length);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                },));
                setState(() {
                });
              }, child: Text("Save"))

            ],
          ),
        ),
      ),
    );
  }
}
