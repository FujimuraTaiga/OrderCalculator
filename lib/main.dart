import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:order_support/View/MainPage/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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