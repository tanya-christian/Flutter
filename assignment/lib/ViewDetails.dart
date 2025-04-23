import 'package:flutter/material.dart';
import 'package:stu_management/GlobalData.dart';
import 'package:stu_management/Student.dart';

class ViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the selected student from GlobalData
    Student student = GlobalData.lststu[GlobalData.selectedindex];

    return Scaffold(
      backgroundColor: GlobalData.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Student Details",
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
                "Student Information",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 20),
              // Displaying student name
              Text(
                "Name: ${student.name}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              // Displaying student email
              Text(
                "Email: ${student.email}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              // Displaying student course
              Text(
                "Course: ${student.course}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              // Displaying student marks
              Text(
                "Marks: ${student.marks}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              // Button to navigate back to HomePage
              ElevatedButton(
                onPressed: () {
                  GlobalData.lststu.removeAt(GlobalData.selectedindex);
                  Navigator.pop(context);
                },
                child: Text("Delete"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
