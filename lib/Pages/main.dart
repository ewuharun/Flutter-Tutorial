import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Pojo/ProductModel.dart';
import '../Widget/ChairWidget.dart';
import '../Widget/TabWidget.dart';
import '../Widget/appBarWidget.dart';
import 'file:///C:/HarunBabl/flutter_tutorial/lib/Constants/ColorConstant.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/Constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: ColorConstants.primaryColor,
          ),
          color: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 1],
                    colors: [Colors.grey[200], Colors.white])),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildAppBar(),
                  _buildTab(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return appBar();
  }

  Widget _buildTab() {
    return TabWidget();
  }
}












