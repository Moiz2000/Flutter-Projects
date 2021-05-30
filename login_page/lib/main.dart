import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login Page")),
        ),
        body: Center(
            child: Column(
          children: [
            Text("Username"),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              child: TextField(),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Password"),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              child: TextField(),
            ),
            SizedBox(),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
          ],
        )),
      )),
    );
  }
}
