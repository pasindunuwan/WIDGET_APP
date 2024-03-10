import 'package:flutter/material.dart';
import 'package:widget_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //convert the MyApp class  as widget to show the user by extend from StatelessWidget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //MY app   extend krl widget ekak krl ek ui eke penne na  build kiyl method eken
    //widget ekak return krnn oni
    return const MaterialApp(
      //app ek load wenkot meke thiyen tikath load wenwa
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: HomePage(),
      //home page eke constctor ek thm methana call krnne
    );
  }
}
