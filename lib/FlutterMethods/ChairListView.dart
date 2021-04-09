import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Constants/Constants.dart';
import 'package:flutter_tutorial/Widget/ChairWidget.dart';



ListView ChairListView() {
  return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(8),
      itemBuilder: (context,index){
        return ChairWidget(productModel: Constants.chairs[index]);
      },
      separatorBuilder: (context,index){
        return SizedBox(width: 10,);
      },
      itemCount: Constants.chairs.length);
}