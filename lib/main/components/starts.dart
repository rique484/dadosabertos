import 'package:flutter/material.dart';

class Starts{
  List<Widget> component (){
    List<Widget> list = [];
    for (int i = 0; i < 28; i++ ) {
      list.add(const Icon(Icons.star, size: 7, color: Colors.white,));
    }
    return list;
  }
}