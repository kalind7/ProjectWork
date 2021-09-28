import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waayu Project',
      theme: ThemeData( fontFamily: 'GoogleFonts.montserrat',
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}


