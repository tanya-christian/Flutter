import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

   TextEditingController txtemail=new TextEditingController();
   TextEditingController txtpass=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("MyApp"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png", height: 100, width: 100),
            TextField(
              controller: txtemail,
              decoration: InputDecoration(icon: Icon(Icons.person),labelText: "Enter Email"),
            ),
            TextField(
              controller: txtpass,
              decoration: InputDecoration(icon: Icon(Icons.lock),labelText: "Enter Password"),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  String text=txtemail.text;
                  int count=0;
                  int len = text.length;
                  for (int i=0;i<len;i++){
                    String char=text[i].toLowerCase();
                    if(char=='a'||char=='e'||char=='i'||char=='o'||char=='u'){
                      count++;
                  }
                  }
                  print(count);
                  if(count%2==0){
                    print("Success");
                  }
                  else{
                    print("Fail");
                  }
                },
                label:Text("Login")),

            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {}, child: Text("Forgot Password")),
                ElevatedButton(onPressed: () {}, child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
