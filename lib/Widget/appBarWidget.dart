import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appBar extends StatelessWidget {
  const appBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Our Products',
            style: GoogleFonts.varelaRound(fontWeight: FontWeight.w600)),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}