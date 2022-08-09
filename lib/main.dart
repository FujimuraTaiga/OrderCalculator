import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/UI/MainPage/main_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainPage(),
        theme: ThemeData(
          cardTheme: const CardTheme(
            elevation: 10,
            shadowColor: Colors.lightBlueAccent,
          ),
        ),
      ),
    ),
  );
}
