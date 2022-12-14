import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflixuis/home/homebloc/home_bloc.dart';
import 'package:netflixuis/pages/conswidgets/apiimageconsturl.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';
import 'package:netflixuis/pages/conswidgets/playbutton.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class Screenhome extends StatelessWidget {
  const Screenhome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context).add(GetHomescreendata());
    });
    final Size screensize = MediaQuery.of(context).size;
    //ok
    //okk
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
            child: ValueListenableBuilder(
                valueListenable: scrollnotifier,
                builder: (BuildContext context, index, _) {
                  return NotificationListener<UserScrollNotification>(
                    onNotification: (Notification) {
                      final ScrollDirection direction = Notification.direction;
                      print(direction);
                      if (direction == ScrollDirection.reverse) {
                        return scrollnotifier.value = false;
                      } else if (direction == ScrollDirection.forward) {
                        return scrollnotifier.value = true;
                      }

                      return true;
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                                  if (state.isloading) {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    );
                                  } else if (state.iserror) {
                                    return Center(
                                        child: Text(
                                      'Error while getting Data',
                                      style: TextStyle(color: Colors.white),
                                    ));
                                  }
                                  final _releasespastyear =
                                      state.trendingmovielist.map((m) {
                                    return '$imageappendurl${m.posterPath}';
                                  }).toList();
                                  //trending
                                  final _trending =
                                      state.pastyearmovielist.map((m) {
                                    return '$imageappendurl${m.posterPath}';
                                  }).toList();

//tense dramas

                                  final _tensedramas =
                                      state.tenseDreamsmovielist.map((m) {
                                    return '$imageappendurl${m.posterPath}';
                                  }).toList();
//south indian movielist
                                  final _southindian =
                                      state.southindianmovielist.map((m) {
                                    return '$imageappendurl${m.posterPath}';
                                  }).toList();
                                  _southindian.shuffle();

                                  //top10 tv shows

                                  final _top10tv =
                                      state.trendingtvlist.map((t) {
                                    return '$imageappendurl${t.posterPath}';
                                  }).toList();

                                  _top10tv.shuffle();

                                  return ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 500,
                                            decoration: const BoxDecoration(
                                                image: const DecorationImage(
                                                    image: const NetworkImage(
                                                        'https://www.themoviedb.org/t/p/w500/pmAv14TPE2vKMIRrVeCd1Ll7K94.jpg'),
                                                    fit: BoxFit.cover)),
                                          ),
                                          sizedheight,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Homepic_icon(
                                                icontitile: 'My List',
                                                pictureicon: Icons.add,
                                              ),
                                              const Play_button(),
                                              Homepic_icon(
                                                icontitile: 'info',
                                                pictureicon: Icons.info_rounded,
                                              )
                                            ],
                                          ),
                                          sizedheight,
                                          Home_first_container(
                                              title:
                                                  'Released in the past year',
                                              posterList: _releasespastyear),
                                          sizedheight,
                                          Home_first_container(
                                              title: 'Trending Now',
                                              posterList: _trending),
                                          Homesecond_widget(
                                              title:
                                                  'Top 10 Tv Shows in india Today',
                                              posterList: _top10tv),
                                          Home_first_container(
                                              title: 'Tense Dramas',
                                              posterList: _tensedramas),
                                          Home_first_container(
                                              title: 'South indian Cinema',
                                              posterList: _southindian),
                                        ],
                                      ),
                                    ],
                                  );

//released pastyear
                                },
                              ),
                              scrollnotifier.value == true
                                  ? AnimatedContainer(
                                      duration: Duration(milliseconds: 1000),
                                      width: double.infinity,
                                      height: screensize.width * 0.2,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.3)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width:
                                                      screensize.width * 0.09,
                                                  height:
                                                      screensize.width * 0.09,
                                                  decoration: const BoxDecoration(
                                                      image: const DecorationImage(
                                                          image: const AssetImage(
                                                              'assets/netflix.png'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.cast,
                                                      color: constwhite,
                                                      size: 30,
                                                    ),
                                                    const SizedBox(
                                                      width: constantwidths,
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: const BoxDecoration(
                                                          color: Colors
                                                              .transparent,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  'assets/smile.png'),
                                                              fit: BoxFit
                                                                  .cover)),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Text(
                                                'TV Shows',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Movies',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Categories',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  : const SizedBox(
                                      height: 5,
                                    ),
                            ],
                          )),
                    ),
                  );
                })));
  }
}

class Home_first_container extends StatelessWidget {
  Home_first_container({
    Key? key,
    required this.title,
    required this.posterList,
  }) : super(key: key);
  final String title;

  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedheight,
        Text(
          title,
          style: const TextStyle(
              color: constwhite, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedheight,
        Container(
          width: double.infinity,
          height: screensize.height * 0.26,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(posterList.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(6),
                child: Container(
                  height: screensize.height * 0.23,
                  width: screensize.width * 0.33,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(posterList[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

class Homesecond_widget extends StatelessWidget {
  Homesecond_widget({
    Key? key,
    required this.title,
    required this.posterList,
  }) : super(key: key);
  final String title;
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedheight,
        Text(
          title,
          style: const TextStyle(
              color: constwhite, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedheight,
        Container(
          width: double.infinity,
          height: screensize.height * 0.26,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                posterList.length,
                (index) => Model_container(
                    imagelink: posterList[index], index: index)),
          ),
        )
      ],
    );
  }
}

class Model_container extends StatelessWidget {
  Model_container({Key? key, required this.imagelink, required this.index})
      : super(key: key);

  final String imagelink;
  final int index;

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(6),
          child: Row(
            children: [
              const SizedBox(
                height: 150,
                width: 40,
              ),
              Container(
                height: screensize.height * 0.23,
                width: screensize.width * 0.33,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imagelink),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 10,
            left: 20,
            child: BorderedText(
              strokeWidth: 10,
              strokeColor: constwhite,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black,
                    fontSize: 90,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}

class Homepic_icon extends StatelessWidget {
  Homepic_icon({Key? key, required this.icontitile, required this.pictureicon})
      : super(key: key);
  final IconData pictureicon;
  final String icontitile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          pictureicon,
          size: 25,
          color: constwhite,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          icontitile,
          style:
              const TextStyle(color: constwhite, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
