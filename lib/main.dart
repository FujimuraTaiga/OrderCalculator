import 'package:flutter/material.dart';
import 'package:order_support/View/MainPage/main_page.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: MainPage(),
      )));
}
