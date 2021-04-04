import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Hello World',
      home: HelloWorld(),
    )
  );
}

class HelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        title: Text('Hello World App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Hello World'
            ),
            Text(
              'Hello world'
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}