import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';
import 'package:netflixuis/pages/conswidgets/playbutton.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class Screenhome extends StatelessWidget {
  const Screenhome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    //ok
    //okk
    return Scaffold(
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
                              ListView(
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
                                          // Stack(
                                          //   children: [
                                          //     InkWell(
                                          //       focusColor: Colors.grey,
                                          //       onTap: () {
                                          //         print('Button works');
                                          //       },
                                          //       child: Container(
                                          //         width: screensize.width * 0.28,
                                          //         height: screensize.width * 0.09,
                                          //         decoration: BoxDecoration(
                                          //             color: constwhite,
                                          //             borderRadius: BorderRadius.circular(3)),
                                          //         child: Row(
                                          //           mainAxisAlignment: MainAxisAlignment.center,
                                          //           children: [
                                          //             SizedBox(
                                          //               width: 5,
                                          //             ),
                                          //             Text(
                                          //               'Play',
                                          //               style: TextStyle(
                                          //                   color: Colors.black,
                                          //                   fontWeight: FontWeight.bold,
                                          //                   fontSize: 17),
                                          //             ),
                                          //           ],
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     Positioned(
                                          //         bottom: 1,
                                          //         left: 5,
                                          //         child: Icon(
                                          //           Icons.play_arrow,
                                          //           color: Colors.black,
                                          //           size: 35,
                                          //         )),
                                          //   ],
                                          // ),
                                          //---------------
                                          //play Button

                                          const Play_button(),
                                          Homepic_icon(
                                            icontitile: 'info',
                                            pictureicon: Icons.info_rounded,
                                          )
                                        ],
                                      ),
                                      sizedheight,
                                      Homefirst_widget(
                                          title: 'Released in the past year',
                                          imagelink:
                                              'https://pbs.twimg.com/media/FY3Jpd8akAA31tL?format=jpg&name=900x900'),
                                      sizedheight,
                                      Homefirst_widget(
                                          title: 'Trending Now',
                                          imagelink:
                                              'https://www.kerala9.com/wp-content/uploads/2022/07/Pappan-Movie-Stills-007.jpg'),
                                      Homesecond_widget(
                                          title:
                                              'Top 10 Tv Shows in india Today'),
                                      Homefirst_widget(
                                          title: 'Tense Dramas',
                                          imagelink:
                                              'https://moviegalleri.net/wp-content/uploads/2020/12/Sesh-Adivi-Major-Movie-Hindi-first-look-poster-HD.jpg'),
                                      Homefirst_widget(
                                          title: 'South indian Cinema',
                                          imagelink:
                                              'https://m.media-amazon.com/images/M/MV5BYmRjOWQ4NDctYzAxZC00NGZhLThmMTctYmVhNjI2YTU4NTc3XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg'),
                                    ],
                                  ),
                                ],
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
                                                      decoration:
                                                          const BoxDecoration(
                                                              color:
                                                                  Colors.blue),
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

class Homefirst_widget extends StatelessWidget {
  Homefirst_widget({Key? key, required this.title, required this.imagelink})
      : super(key: key);
  final String title;
  final String imagelink;

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
            children: List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.all(6),
                child: Container(
                  height: screensize.height * 0.23,
                  width: screensize.width * 0.33,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imagelink),
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
  }) : super(key: key);
  final String title;

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
                10,
                (index) => Model_container(
                    imagelink:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY2PJ9tbRYNPzrkiEhOocHXPtQfA3F3faaKQ&usqp=CAU',
                    index: index)),
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
