import 'package:flutter/material.dart';
import 'package:netflixuis/newhot/tabpage/cominsoontab.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';

everyonetab(BuildContext context) {
  final Size screensize = MediaQuery.of(context).size;
  final paddingsize = (screensize.width) - (screensize.width - 55);
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, index) => Everyones_widget()),
  );
}

class Everyone_icon extends StatelessWidget {
  final IconData iconpath;
  final String icontitle;
  const Everyone_icon(
      {Key? key, required this.iconpath, required this.icontitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconpath,
          color: constwhite,
        ),
        Text(
          icontitle,
          style: const TextStyle(
              fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Everyones_widget extends StatelessWidget {
  const Everyones_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final paddingsize = (screensize.width) - (screensize.width - 55);

    return Container(
      width: double.infinity,
      height: screensize.height * 0.54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedheight,
          Text(
            'Friends',
            style: TextStyle(
                color: constwhite, fontWeight: FontWeight.bold, fontSize: 19),
          ),
          sizedheight,
          Text(
            'Ross Geller, Rachel Green, Monica Geller, Joey Tribbiani, Chandler Bing, and Phoebe Buffay are six twenty-somethings living in New York City. Over the course of 10 years and seasons, these friends go through life lessons, family, love, drama, friendship, and comedy.',
            style: const TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screensize.width * 0.1,
          ),
          Container(
            width: double.infinity,
            height: screensize.height * 0.23,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZNE03n7FBY36SOI4ouDnpW_fXFiobt9mgaw&usqp=CAU'),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  left: 332,
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
          iconspaceheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Everyone_icon(iconpath: Icons.share, icontitle: 'Share'),
              iconspacewidth,
              Everyone_icon(iconpath: Icons.add, icontitle: 'MyList'),
              iconspacewidth,
              Everyone_icon(iconpath: Icons.play_arrow, icontitle: 'Play'),
              iconspacewidth,
            ],
          )
        ],
      ),
    );
  }
}
