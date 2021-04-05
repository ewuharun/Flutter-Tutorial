import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Creating A Horizontal List',
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: 'AppBar Icon',
          onPressed: null,
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'This is Toolbar'
        ),
        actions: <Widget>[
          IconButton(
            tooltip: 'Action Search',
            onPressed: null,
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: HorizontalListWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        elevation: 30,
        child: IconButton(
          tooltip: 'Floating Action Button',
          onPressed: null,
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}

class HorizontalListWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

class Product {
  String name;
  Product({this.name, String productName});
}

