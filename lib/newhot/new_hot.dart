import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixuis/newhot/tabpage/cominsoontab.dart';
import 'package:netflixuis/newhot/tabpage/everyonetab.dart';
import 'package:netflixuis/pages/conswidgets/appbars.dart';

import '../pages/conswidgets/constantelements.dart';

class Screennewandhot extends StatelessWidget {
  const Screennewandhot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ok
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: Text('New & Hot',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 30, fontWeight: FontWeight.w800)),
              actions: [
                Icon(
                  Icons.cast,
                  color: constwhite,
                  size: 30,
                ),
                SizedBox(
                  width: constantwidths,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(color: Colors.blue),
                )
              ],
              bottom: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  labelColor: constblack,
                  unselectedLabelColor: constwhite,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  tabs: [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(
                      text: "👀 Everyone's watching",
                    ),
                  ]),
            ),
          ),
          backgroundColor: Colors.black,
          body: TabBarView(children: [
            comingsoontab(context),
            everyonetab(context),
          ])),
    );
  }

  // _tabbarswitch(String name) {
  //   return Center(child: Text('$name'));
  // }

}
