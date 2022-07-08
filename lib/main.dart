import 'package:draft_app_01/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.amber,
        ),


        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
        }
    );
  }
}