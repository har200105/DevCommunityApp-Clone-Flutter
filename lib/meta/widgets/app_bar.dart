import 'package:devapp/app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBar({
  @required String titleText,@required Widget leadingWidget,List<Widget>actions
}){
  return AppBar(
    leading:leadingWidget ,
    backgroundColor: bgColor,
    title:Text(titleText,style: TextStyle(fontSize:16.0,fontWeight:FontWeight.bold,color:whiteColor),) ,
    actions: actions,
  );
}