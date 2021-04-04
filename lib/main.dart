import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Flutter Tutorial",
      home: SafeArea(
        child: MyScaffold(),
      ),
    )
  );
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Material is a conceptual piece of paper
    //on which the UI appears
    return Material(
      //Column is a vertical Linear Layout
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
                "Example Title",
              style: Theme.of(context).primaryTextTheme.headline,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello World'),
            ),
          )
        ],
      ),
    );
  }

}

class MyAppBar extends StatelessWidget {
  final Widget title;

  const MyAppBar({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 56.0,//in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.blue[500],
      ),
      //Row is a horizontal linear layout
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}