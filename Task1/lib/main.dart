import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';

void main() {
  runApp(MaterialApp(
    home: Qoutes(),
  ));
}

class Qoutes extends StatefulWidget {
  @override
  _QoutesState createState() => _QoutesState();
}

class _QoutesState extends State<Qoutes> {
  List<Qoute> qoutes = [
    Qoute(
        text:
            'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelts'),
    Qoute(
        text:
            'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelt..'),
    Qoute(
        text:
            'If life were predictable it would cease to be life, and be without flavor.',
        author: 'Eleanor Roosevelt.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Famous Qoutes'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: qoutes
              .map((qoute) => QouteCard(
                  qoutes: qoute,
                  delete: () {
                    setState(() {
                      qoutes.remove(qoute);
                    });
                  }))
              .toList(),
        ));
  }
}
