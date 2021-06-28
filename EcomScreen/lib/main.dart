import 'package:flutter/material.dart';

import 'grid.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EcomScreen(),
  ));
}

class EcomScreen extends StatefulWidget {
  @override
  _EcomScreenState createState() => _EcomScreenState();
}

class _EcomScreenState extends State<EcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        centerTitle: true,
        title: Text(
          "E-Commerce App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View More",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: carousal(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "More Categories",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: CategoriesList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View More",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Grid(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange[300],
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50,
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            SizedBox(
              width: 100,
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(
              icon: Icon(Icons.group),
              onPressed: () {},
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[300],
        onPressed: () {},
        child: Icon(
          Icons.search,
          size: 30,
        ),
        elevation: 2.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
