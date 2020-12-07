import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: KnosCard(),
  ));
}

class KnosCard extends StatefulWidget {
  @override
  _KnosCardState createState() => _KnosCardState();
}

class _KnosCardState extends State<KnosCard> {
  int Salary = 20000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Knos ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Salary += 500;
          });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/pic-1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Moiz Fakhruddin',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 20.0,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'CURRENT POSITION',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Board-Member',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 20.0,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'CURRENT SALARY',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$Salary',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 20.0,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'CURRENT TASK',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Learn Coding in Flutter',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 20.0,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'EXPERTISE  IN',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'HTML \nCSS \nC# \nJAVA \nPYTHON',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Moizfakhruddin2000@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '0334-2142562',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Pressed Button To Increase Salary',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18.0,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
