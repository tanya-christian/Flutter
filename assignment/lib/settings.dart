import 'package:flutter/material.dart';
import 'package:stu_management/GlobalData.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double red = GlobalData.bgColor.red.toDouble();
  double green = GlobalData.bgColor.green.toDouble();
  double blue = GlobalData.bgColor.blue.toDouble();

  void updateColor() {
    setState(() {
      GlobalData.bgColor = Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalData.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Settings / About",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "App Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("Student Management App"),
              Text("Version: 1.0.0"),
              SizedBox(height: 30),
              Text(
                "Customize Background Color",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text("Red: ${red.toInt()}"),
              Slider(
                value: red,
                min: 0,
                max: 255,
                onChanged: (val) {
                  red = val;
                  updateColor();
                },
              ),
              Text("Green: ${green.toInt()}"),
              Slider(
                value: green,
                min: 0,
                max: 255,
                onChanged: (val) {
                  green = val;
                  updateColor();
                },
              ),
              Text("Blue: ${blue.toInt()}"),
              Slider(
                value: blue,
                min: 0,
                max: 255,
                onChanged: (val) {
                  blue = val;
                  updateColor();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
