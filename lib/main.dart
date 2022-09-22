import 'package:flutter/material.dart';
import 'package:netflixuis/widgets/home_page.dart';
import 'package:netflixuis/widgets/colors.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white)),
          appBarTheme: AppBarTheme(backgroundColor: constblack)),
      home: Home_page(),
    );
  }
}
