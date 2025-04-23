import 'package:final_prac/book.dart';
import 'package:final_prac/GlobalData.dart';
import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController txtnm = TextEditingController();
  TextEditingController txtauth = TextEditingController();
  double price=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ADD")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: txtnm,),
          TextField(controller: txtauth,),
          Slider(min:150,max:650,value: price, onChanged: (value) {
            price=value;
            setState(() {

            });
          },),
          Text(price.toInt().toString()),
          ElevatedButton(onPressed: () {
            Book obj = new Book();
            obj.title=txtnm.text;
            obj.author=txtauth.text;
            obj.price=price;
            GlobalData.lstbk.add(obj);
            print(GlobalData.lstbk.length);
              setState(() {
              });
          }, child: Text("Add"))
        ],
    ),
    );
  }
}
