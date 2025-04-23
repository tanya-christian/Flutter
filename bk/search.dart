import 'package:final_prac/GlobalData.dart';
import 'package:flutter/material.dart';
import 'package:final_prac/book.dart';
import 'package:final_prac/GlobalData.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  TextEditingController txtsrch =  TextEditingController();
  String result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: txtsrch,),
      ElevatedButton(
        onPressed: () {
          String title = txtsrch.text;
          bool found = false;

          for (Book b in GlobalData.lstbk) {
            if (b.title.toLowerCase() == title.toLowerCase()) {
              result = "Title: ${b.title}\nAuthor: ${b.author}\nPrice: ${b.price}";
              found = true;
              break;
            }
          }

          if (!found) {
            result = "Book not found.";
          }

          setState(() {});
        },
        child: Text("Search"),),
          Text(result)
        ],
      ),
    );
  }
}
