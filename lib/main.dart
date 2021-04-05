import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Creating A GridList',
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
      body: GridWidget(),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          tooltip: 'Floating Action Button',
          onPressed: null,
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}

class GridWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('Clicked Grid Item');
      },
      child:GridView.count(
        //This line is for scrolling the horizontal
        //scrollDirection: Axis.horizontal,
        //Column count
        crossAxisCount: 2,
        children: List.generate(100,(index){
          return Container(
            margin: EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Item $index'
                ),
                Text(
                  'Item $index'
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}