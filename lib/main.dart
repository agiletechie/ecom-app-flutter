import 'package:flutter/material.dart';
import 'package:ecom_app/screens/welcome_screen.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = 'Ecom App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: WelcomeScreen(),
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kInitialScreenColor,
        // fontFamily: kFontFamily.fontFamily,
      ),
    );
  }
}
