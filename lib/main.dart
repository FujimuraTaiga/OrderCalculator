import 'package:flutter/material.dart';
import 'package:order_support/View/main_page.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: MainPage(),
      )
    )
  );
}