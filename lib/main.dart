import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Button Clicked Event',
    home: ElevatedButtonClick(),
  ));
}

class ElevatedButtonClick extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: <Widget>[
            AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation Icon',
                onPressed: null,
              ),
              title: Text('Statefull Button'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search Button',
                  onPressed: null,

                )
              ],
            ),
            MyButton(),

          ],
        ),
      ),
    );
  }

}


class MyButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
}



class _CounterState extends State<MyButton>{
  int _counter=0;
  void _increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
            onPressed:_increment,
            child: Text('Increment'),
            color: Colors.blue,
        ),
        SizedBox(width: 16),
        Text('Count : $_counter'),

      ],
    );
  }
}


