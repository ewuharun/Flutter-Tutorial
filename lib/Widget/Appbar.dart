import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Constants/ColorConstant.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Text(
      'Our Products',
      style: GoogleFonts.varelaRound(
        color: Colors.blue,
        fontWeight: FontWeight.w600,
      ),
    ),
    actions: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search,size: 20,),
            ),
          ),
        ),
      )
    ],
  );
}