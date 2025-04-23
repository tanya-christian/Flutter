import 'package:flutter/material.dart';
import 'package:stu_management/GlobalData.dart';
import 'package:stu_management/Student.dart';
import 'home.dart';

class editStudent extends StatefulWidget {
  const editStudent({super.key});

  @override
  State<editStudent> createState() => _editStudentState();
}

class _editStudentState extends State<editStudent> {
  TextEditingController txtname = TextEditingController(text:GlobalData.lststu[GlobalData.selectedindex].name);
  TextEditingController txtemail = TextEditingController(text: GlobalData.lststu[GlobalData.selectedindex].email);
  TextEditingController txtcourse = TextEditingController(text: GlobalData.lststu[GlobalData.selectedindex].course);
  double sldvalue= GlobalData.lststu[GlobalData.selectedindex].marks.toDouble();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalData.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Edit Student Details",
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
                GlobalData.lststu[GlobalData.selectedindex].name=txtname.text;
                GlobalData.lststu[GlobalData.selectedindex].email=txtemail.text;
                GlobalData.lststu[GlobalData.selectedindex].course=txtcourse.text;
                GlobalData.lststu[GlobalData.selectedindex].marks = sldvalue.toInt();
                Navigator.pop(context);
              }, child: Text("Edit"))

            ],
          ),
        ),
      ),
    );
  }
}
