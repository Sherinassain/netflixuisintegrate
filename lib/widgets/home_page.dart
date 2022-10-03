import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/Downloads/downloads.dart';
import 'package:netflixuis/fastlaugh/fast_laugh.dart';
import 'package:netflixuis/newhot/new_hot.dart';
import 'package:netflixuis/home/screen_home.dart';
import 'package:netflixuis/Search/search_page.dart';
import 'package:netflixuis/widgets/bottomnavigationbar.dart';

class Home_page extends StatelessWidget {
  Home_page({Key? key}) : super(key: key);
  final pages = [
    Screenhome(),
    Screennewandhot(),
    Screenfastlaugh(),
    Screensearch(),
    screendownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, int new1, _) {
            return pages[new1];
          }),
      bottomNavigationBar: Bottomnav(),
    );
  }
}
