import 'package:flutter/material.dart';
import 'package:order_support/UI/main_page.dart';

void main(){
  runApp(
    const MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: MainPage()
      )
    )
  );
}