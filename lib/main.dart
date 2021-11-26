import 'package:flutter/material.dart';
import 'package:fin_buddy/constants/color_constant.dart';
import 'package:fin_buddy/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: kBackgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
