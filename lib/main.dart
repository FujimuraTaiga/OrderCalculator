import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/UI/MainPage/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.amber),
          tabBarTheme: TabBarTheme(
            labelColor: Colors.white,
            overlayColor: MaterialStateProperty.all(Colors.white),
          ),
          indicatorColor: Colors.white,
          scaffoldBackgroundColor: Colors.grey.shade300,
          cardTheme: CardTheme(
            color: Colors.white,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
          ),
        ),
      ),
    ),
  );
}
