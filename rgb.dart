import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool swtvalue = false;
  bool chkvalue1 = true;
  bool chkvalue2 = true;
  bool chkvalue3 = true;
  double sldvalue1 = 0.0;
  double sldvalue2 = 0.0;
  double sldvalue3 = 0.0;
  Color bgcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(centerTitle: true, title: Text("Change the Color")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
            value: swtvalue,
            onChanged: (value) {
              swtvalue = value;
              setState(() {});
            },
          ),
          Checkbox(
            value: chkvalue1,
            onChanged: (value) {
              chkvalue1 = value!;
              if(swtvalue==true) {
                if (chkvalue1 == true) {
                  bgcolor = Colors.red;
                }
                else {
                  bgcolor = Colors.white;
                };
              };

              setState(() {});
            },
          ),
          Text(
            "Red",
            style: TextStyle(color: Colors.red),
          ),
          Checkbox(
            value: chkvalue2,
            onChanged: (value) {
              chkvalue2 = value!;
              if(swtvalue==true) {
                if (chkvalue2 == true) {
                  bgcolor = Colors.green;
                }
                else {
                  bgcolor = Colors.white;
                }
              };
              setState(() {});
            },
          ),
          Text(
            "Green",
            style: TextStyle(color: Colors.green),
          ),
          Checkbox(
            value: chkvalue3,
            onChanged: (value) {
              chkvalue3 = value!;
              if(swtvalue==true) {
                if (chkvalue3 == true) {
                  bgcolor = Colors.blue;
                }
                else {
                  bgcolor = Colors.white;
                }
              };
              setState(() {});
            },
          ),
          Text(
            "Blue",
            style: TextStyle(color: Colors.blue),
          ),
          Slider(
            min: 0,
            max: 255,
            value: sldvalue1,
            onChanged: (value) {
              sldvalue1 = value;
              bgcolor = Color.fromRGBO(sldvalue1.toInt(), sldvalue2.toInt(), sldvalue3.toInt(), 1.0);

              setState(() {});
            },
          ),
          Slider(
            min: 0,
            max: 255,
            value: sldvalue2,
            onChanged: (value) {
              sldvalue2 = value;
              bgcolor = Color.fromRGBO(sldvalue1.toInt(), sldvalue2.toInt(), sldvalue3.toInt(), 1.0);
              setState(() {});
            },
          ),
          Slider(
            min: 0,
            max: 255,
            value: sldvalue3,
            onChanged: (value) {
              sldvalue3 = value;
              bgcolor = Color.fromRGBO(sldvalue1.toInt(), sldvalue2.toInt(), sldvalue3.toInt(), 1.0);
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
