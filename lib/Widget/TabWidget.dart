import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Constants/ColorConstant.dart';
import 'package:flutter_tutorial/FlutterMethods/ChairListView.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Pages/main.dart';
class TabWidget extends StatelessWidget {
  const TabWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              labelColor: ColorConstants.primaryColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: GoogleFonts.varelaRound(fontWeight: FontWeight.w600),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                //insets: EdgeInsets.symmetric(horizontal: 60)
              ),
              tabs: [
                Tab(
                  text: 'Armchairs',
                ),
                Tab(
                  text: 'Sofas',
                ),
                Tab(
                  text: 'Beds',
                ),
                Tab(
                  text: 'Tables',
                ),
              ],
            ),
            Container(
              height: 250,
              child: TabBarView(
                children: [
                  _buildChairProducts(),
                  Text("Sofas"),
                  Text("Beds"),
                  Text("Tables"),
                ],
              ),
            ),
          ],
        ));
  }

  _buildChairProducts(){
    return ChairListView();
  }
}