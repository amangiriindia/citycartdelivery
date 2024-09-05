import 'welcomescreen.dart';
import 'package:flutter/material.dart';

import 'login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(), // This will set WelcomeScreen as the home screen
      routes: {
        '/login': (context) => LoginScreen(),
      },
    );
  }
}