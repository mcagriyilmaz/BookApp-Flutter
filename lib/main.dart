//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/screens/home_screen.dart';
//import 'package:namer_app/screens/selected_book_screen.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(secondary: Colors.orangeAccent.shade200),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: HomeScreen(),
      routes: {"/homeScreen": (_) => new HomeScreen()},
    );
  }
}
