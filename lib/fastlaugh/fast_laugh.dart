import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/Search/searchpage_containers.dart';
import 'package:netflixuis/fastlaugh/faslaughcontainer.dart';

class Screenfastlaugh extends StatelessWidget {
  const Screenfastlaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return Fastlaugh_container(index: index);
          }),
        )));
  }
}
