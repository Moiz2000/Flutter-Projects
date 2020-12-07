import 'package:flutter/material.dart';
import 'qoute.dart';

class QouteCard extends StatelessWidget {
  final Qoute qoutes;
  final Function delete;
  QouteCard({this.qoutes, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qoutes.text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              qoutes.author,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete Qoute'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
