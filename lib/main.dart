import 'package:flutter/material.dart';
import 'package:my_tdd_devops_mobile/constants.dart';
import 'package:my_tdd_devops_mobile/screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My flutter app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen(),
    );
  }
}
