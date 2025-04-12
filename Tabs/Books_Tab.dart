import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Tabs()));
}

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            title: Text(
              "Books",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            bottom: TabBar(tabs: [
              Tab(
                text: "Add Book",
                icon: Icon(Icons.add),
              ),
              Tab(
                text: "View Book",
                icon: Icon(Icons.book),
              ),
              Tab(
                text: "Search Book",
                icon: Icon(Icons.search),
              )
            ]),
          ),
          body: TabBarView(children: [TabAdd(), TabView(), TabSearch()]),
        ));
  }
}

class TabAdd extends StatelessWidget {
  const TabAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(children: [
        TextField(
          decoration: InputDecoration(label: Text("Enter Book Name")),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(label: Text("Enter Author Name")),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Add"))
      ]),
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        "Book Details",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TabSearch extends StatelessWidget {
  const TabSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(children: [
        TextField(
          decoration: InputDecoration(label: Text("Enter Author Name")),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Search"))
      ]),
    );
    ;
  }
}
