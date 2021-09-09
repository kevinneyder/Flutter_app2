import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/alert_page.dart';
import 'package:flutter_application_2/src/pages/avatar_page.dart';

import 'package:flutter_application_2/src/pages/home_page.dart';
import 'package:flutter_application_2/src/pages/home_page_temp.dart';
import 'package:flutter_application_2/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings){
        print('ruta llamada ${settings.name}');
        return MaterialPageRoute(
          builder:  (context) => AlertPage(),
        );
      },
    );
  }
} 