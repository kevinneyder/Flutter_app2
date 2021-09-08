import 'package:flutter/material.dart';

import 'package:flutter_application_2/src/pages/home_pages.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePageTemp(),
    );
  }
}