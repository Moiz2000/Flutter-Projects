import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "0";

  Widget button(var text) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black, //background color of button
            shape: RoundedRectangleBorder(
                //to set border radius to button
                borderRadius: BorderRadius.circular(50)),
            padding: EdgeInsets.all(20) //content padding inside button
            ),
        onPressed: () {
          setState(() {
            result = result + text;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 40,
          ),
        ));
  }

  // This function clearr the text
  clear() {
    setState(() {
      result = "";
    });
  }

  size() {
    return SizedBox(
      height: 10,
    );
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
              fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Calculator display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      result,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.grey[800],
            ),
            size(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, //background color of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(50)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: clear,
                    child: Text(
                      "CA",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    )),
                button("+"),
                button("-"),
                button("/"),
              ],
            ),
            size(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button("7"),
                button("8"),
                button("9"),
                button("*"),
              ],
            ),
            size(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button("4"),
                button("5"),
                button("6"),
                button("%"),
              ],
            ),
            size(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button("1"),
                button("2"),
                button("3"),
                button("^"),
              ],
            ),
            size(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, //background color of button
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(50)),
                      padding: EdgeInsets.fromLTRB(
                          34, 20, 128, 20), //content padding inside button
                    ),
                    onPressed: () {
                      setState(() {
                        result = result + "0";
                      });
                    },
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    )),
                button("."),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, //background color of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(50)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: output,
                    child: Text(
                      "=",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ))
              ],
            ),
            size(),
          ],
        ),
      ),
    );
  }
}
