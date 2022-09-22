import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/pages/conswidgets/appbars.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';
import 'package:netflixuis/Downloads/downloadsections.dart';
import 'package:netflixuis/pages/conswidgets/imagecontainer.dart';

class screendownloads extends StatelessWidget {
  final _downloadwidgets = [
    //section1

    Section1(),
    //section2
    Section2(),

    //section3
    section3(),
  ];
  screendownloads({Key? key}) : super(key: key);
  final List imagelinkes = [
    'https://www.plumeriamovies.com/hq-malayalam-movie-posters-random/luca-malayalam-movie-poster/',
    'https://i1.wp.com/www.nairtejas.com/wp-content/uploads/2019/12/Under-World-Malayalam-film-poster-by-Oldmonks.jpg?ssl=1',
    'https://i2.wp.com/www.nairtejas.com/wp-content/uploads/2019/12/Allu-Ramendran-poster-by-Thought-Station.jpg?ssl=1',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Appbars(
              appbartitle: 'Downloads',
            )),
        backgroundColor: Colors.black,
        body: ListView.separated(
          padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return _downloadwidgets[index];
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemCount: _downloadwidgets.length));
  }
}
