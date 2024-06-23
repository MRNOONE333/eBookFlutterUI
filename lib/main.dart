import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Splash_screen.dart';
import 'book_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(), // SplashScreen as the initial route
        '/home': (context) => MyHomePage(),
        '/bookInfo': (context) => BookInfo(),
      },
    );
  }
}
