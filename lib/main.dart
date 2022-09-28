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
