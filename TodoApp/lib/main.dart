import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoApp(),
  ));
}

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  var output = "";
  List<dynamic> lst = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        shadowColor: Colors.orange.shade400,
        centerTitle: true,
        title: Text(
          "TODO APP",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.orange[200],
              margin: EdgeInsets.only(bottom: 15),
              child: ListTile(
                title: Text(
                  "${lst[index]}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: Container(
                  width: 70,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.lime[50],
                                    title: Text(
                                      "Edit Item",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    content: TextField(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                      autocorrect: true,
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                      ),
                                      onChanged: (value) {
                                        output = value;
                                      },
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.orange[400],
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            setState(() {
                                              lst.replaceRange(
                                                  index, index + 1, {output});
                                            });
                                          },
                                          child: Text("Edit"))
                                    ],
                                  );
                                });
                          },
                          child: Icon(Icons.edit, color: Colors.black)),
                      SizedBox(width: 15),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              lst.removeAt(index);
                            });
                          },
                          child: Icon(Icons.check, color: Colors.black)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.orange[400],
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.lime[50],
                    title: Text(
                      "Add Item",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    content: TextField(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: "Enter Task Here",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      onChanged: (value) {
                        output = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange[400],
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            setState(() {
                              lst.add(output);
                            });
                          },
                          child: Text("Add"))
                    ],
                  );
                });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
