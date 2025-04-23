import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ChkSwt()));
}

class Bgcolor extends StatefulWidget {
  const Bgcolor({super.key});

  @override
  State<Bgcolor> createState() => _BgcolorState();
}

class _BgcolorState extends State<Bgcolor> {
  double sldval1 = 0.0;
  double sldval2 = 0.0;
  double sldval3 = 0.0;
  Color bgclr = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgclr,
      appBar: AppBar(
        title: Text("Change BGColor"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Change the color"),
          SizedBox(height: 10),
          Slider(
            min: 0,
            max: 255,
            value: sldval1,
            onChanged: (value) {
              sldval1 = value;
              setState(() {});
              bgclr = Color.fromRGBO(
                  sldval1.toInt(), sldval2.toInt(), sldval3.toInt(), 1.0);
            },
          ),
          Slider(
            min: 0,
            max: 255,
            value: sldval2,
            onChanged: (value) {
              sldval2 = value;
              setState(() {});
              bgclr = Color.fromRGBO(
                  sldval1.toInt(), sldval2.toInt(), sldval3.toInt(), 1.0);
            },
          ),
          Slider(
            min: 0,
            max: 255,
            value: sldval3,
            onChanged: (value) {
              sldval3 = value;
              setState(() {});
              bgclr = Color.fromRGBO(
                  sldval1.toInt(), sldval2.toInt(), sldval3.toInt(), 1.0);
            },
          ),
        ],
      ),
    );
  }
}

class ChkSwt extends StatefulWidget {
  const ChkSwt({super.key});

  @override
  State<ChkSwt> createState() => _ChkSwtState();
}

class _ChkSwtState extends State<ChkSwt> {
  bool swtval=false;
  bool chk1 = false;
  bool chk2=false;
  bool chk3=false;
  Color bgcr=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcr,
      appBar: AppBar(
        title: Text("CheckBox & Switch"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Switch(value: swtval, onChanged: (value) {
              swtval=value;
              if(swtval==true){
                bgcr=Colors.red;
              }
              else{
                bgcr=Colors.white;
              }
              setState(() {

              });
            },),
          Checkbox(value: chk1, onChanged: (value) {
                chk1=value!;
                if(swtval==true){
                if(chk1==true){
                  bgcr=Colors.pinkAccent;
                }
                else{
                  bgcr=Colors.white;
                }
                }
                setState(() {

                });
          },),
          Checkbox(value: chk2, onChanged: (value) {
            chk2=value!;
            if(swtval==true){
              if(chk2==true){
                bgcr=Colors.greenAccent;
              }
              else{
                bgcr=Colors.white;
              }
            }
            setState(() {
            });
          },),
          Checkbox(value: chk3, onChanged: (value) {
            chk3=value!;
            if(swtval==true){
              if(chk3==true){
                bgcr=Colors.orangeAccent;
              }
              else{
                bgcr=Colors.white;
              }
            }
            setState(() {

            });
          },)
        ],
      ),
    );
  }
}
