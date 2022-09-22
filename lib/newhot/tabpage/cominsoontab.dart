import 'package:flutter/material.dart';
import 'package:netflixuis/home/screen_home.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';

comingsoontab(BuildContext context) {
  final Size screensize = MediaQuery.of(context).size;
  final paddingsize = (screensize.width) - (screensize.width - 55);
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, index) => Comingsoon_widget()),
  );
}

class Comingsoon_icon extends StatelessWidget {
  final String iconpath;
  final String icontitle;
  const Comingsoon_icon(
      {Key? key, required this.iconpath, required this.icontitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageIcon(
          AssetImage(iconpath),
          color: constwhite,
        ),
        Text(
          icontitle,
          style: const TextStyle(
              fontSize: 8, color: Colors.grey, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Comingsoon_widget extends StatelessWidget {
  const Comingsoon_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final paddingsize = (screensize.width) - (screensize.width - 55);
    return Container(
      width: double.infinity,
      height: screensize.height * 0.55,
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                width: (screensize.width) - (screensize.width - 55),
                height: screensize.height * 0.23,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'FEB',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      '11',
                      style: TextStyle(
                          color: constwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                  ],
                ),
              ),
              Container(
                width: screensize.width - 55,
                height: screensize.height * 0.23,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtZcfZPC841S5PuemLiE2ZifG2I7j5tZOMZw&usqp=CAU'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 290,
                      child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          radius: 20,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.volume_off,
                                color: constwhite,
                                size: 20,
                              ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
          sizedheight,
          Padding(
            padding: EdgeInsets.only(
                left: paddingsize, right: screensize.width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: screensize.width * 0.02),
                      child: const Text(
                        'TALL GIRL 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: constwhite,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: screensize.width * 0.02,
                          right: screensize.width * 0.015),
                      child: Row(
                        children: [
                          const Comingsoon_icon(
                              iconpath: 'assets/bell.png',
                              icontitle: 'Remind Me'),
                          SizedBox(
                            width: screensize.width * 0.02,
                          ),
                          const Comingsoon_icon(
                              iconpath: 'assets/infoicon.png',
                              icontitle: 'info')
                        ],
                      ),
                    )
                  ],
                ),
                Text(
                  'Coming on Friday',
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screensize.width * 0.07,
                ),
                Text(
                  'Tall Girl 2',
                  style: TextStyle(
                      color: constwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                sizedheight,
                Text(
                  'The relationship between Jodi and Dunkleman begins on a lovely note, with the two sharing romantic moments. Jodi has become one of the popular kids at school as a result of her speech at the Homecoming dance, who high-fives other students instead of staring down the hallways.',
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
