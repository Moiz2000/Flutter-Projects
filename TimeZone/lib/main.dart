import 'package:flutter/material.dart';
import 'package:TimeZone/pages/home.dart';
import 'package:TimeZone/pages/loading_screen.dart';
import 'package:TimeZone/pages/Select_Location.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/home': (context) => HomeScreen(),
        '/location': (context) => SelectLocation(),
      },
    ));
