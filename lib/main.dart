import 'package:flutter/material.dart';
import 'package:instagram_ui/navigationbar_page.dart';

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
      home: const NavigationPage(),
    );
  }
}
