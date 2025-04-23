import 'package:flutter/material.dart';
import 'package:final_prac/GlobalData.dart';
import 'package:final_prac/book.dart';

class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View"),
      ),
      body:
          ListView.builder(
            itemCount: GlobalData.lstbk.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(GlobalData.lstbk[index].title),
                leading: CircleAvatar(
                  child: Text(GlobalData.lstbk[index].title[0]),
                ),
                trailing: Text(GlobalData.lstbk[index].price.toString()),
              );
            },
          )
    );
  }
}
