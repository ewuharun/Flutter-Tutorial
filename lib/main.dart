



import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'App No 1',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('App No 1'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: RandomWords(),
      floatingActionButton: FloatingActionButton(),
    );
  }


  void _pushSaved() {
    print("tappes");
    Navigator.of(context).push(
        MaterialPageRoute<void>(
            builder: (BuildContext context){
              return Scaffold(
                appBar: AppBar(
                  title: Text('Saved Suggestions'),
                ),
                floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add),
                  tooltip: "Add",
                ),
              );
            }
        )
    );

  }
}


class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return RandomWordState();
  }

}






class RandomWordState extends State<RandomWords>{
  final suggestions= <WordPair>[];
  final fontSize = new TextStyle(fontSize: 18);
  final saved=<WordPair>{};

  @override
  Widget build(BuildContext context) {

    return Container(
        child: buildSuggestions(),
    );
  }

  Widget buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext context,int i){
          if(i.isOdd){
            return Divider();
          }
          final int index=i~/2;
          suggestions.addAll(generateWordPairs().take(10));
          return buildRow(suggestions[index]);
      },

    );
  }

  Widget buildRow(WordPair pair) {
    final alreadySaved=saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: fontSize,
      ),
      trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            saved.remove(pair);
          }else{
            saved.add(pair);
          }
        });
      },
    );
  }
}