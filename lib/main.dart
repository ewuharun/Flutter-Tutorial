import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Handling Gesture',
    home: HandlingGesture(),
    debugShowCheckedModeBanner: false,
  ));
}

class HandlingGesture extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        )
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            MyButton(),
            MyButton()
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      height: 50.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 50),
      child: Center(
        child: Text('Engage'),
      ),
    );
  }
}