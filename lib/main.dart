import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "ListView With Different Item",
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        toolbarOpacity: 1,
        leading: Icon(Icons.menu),
        elevation: 10,
        title: Text(
          "ListView",
          style: Theme.of(context).textTheme.headline,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: WidgetListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: IconButton(
          icon: Icon(Icons.add),
          color: Colors.blue,
        ),
      ),
    );
  }
}

class WidgetListView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WidgetListViewState();
  }
}

class WidgetListViewState extends State<WidgetListView>{
  @override
  Widget build(BuildContext context) {
    return aCustomListView(context);
  }


  Widget aCustomListView(BuildContext context){

    Widget container=Expanded(
      child: Column(
        children: <Widget>[
          Text('harun'),
          Text('Rashid'),
        ],
      ),
    );




    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context,index){
        return Container(
          child: Row(
            children: <Widget>[
              container,
              container,
            ],
          ),
        );
      },
    );
  }






  Widget aDynamicListView(BuildContext context){

    // backing data
    // final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
    //   'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    //   'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    //   'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    //   'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    //   'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    //   'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    //   'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    //   'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];


    final titles = ['bike', 'boat', 'bus', 'car',
      'railway', 'run', 'subway', 'transit', 'walk'];

    final icons = [Icons.directions_bike, Icons.directions_boat,
      Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
      Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
      Icons.directions_walk];

    return ListView.separated(
      itemCount: titles.length,
      itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.all(20),
          padding: const EdgeInsets.all(0),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(titles[index]),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                print(titles[index]);
              },
            ),
          ),
        );
        },
      separatorBuilder: (context,indext){
        return Divider();
      },

    );
  }



  Widget aSimpleListView(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        color: Colors.black,
        tiles : [
        ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Green'),
        ),  ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Green'),
        ),  ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Green'),
        ),  ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Green'),
        ),  ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Green'),
        ),  ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Green'),
        ),  ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Green'),
        ),
      ],
      ).toList(),
    );
  }
}