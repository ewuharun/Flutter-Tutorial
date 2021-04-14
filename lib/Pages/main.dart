

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Pages/HomePage.dart';
import 'package:flutter_tutorial/Pages/ProductPage.dart';



void main() {
  runApp(MaterialApp(
    title: 'Networking',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          elevation: 5,
          color: Colors.blue),
    ),
    initialRoute: '/',
    routes: {
      '/' : (context) => Home(),
    },
  ));
}




