import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';

class Searchboxcontainersold extends StatelessWidget {
  final String imageurl;
  final String title;
  const Searchboxcontainersold(
      {Key? key, required this.imageurl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenwidth = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: NetworkImage(imageurl), fit: BoxFit.cover)

                color: Colors.transparent),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          ),
          Text(
            title,
            style: TextStyle(color: constwhite, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('assets/playcircle.png'),
                color: constwhite,
                size: 45,
              )),
        ],
      ),
    );
  }
}
//Searchboxcontainers(
                 //     imageurl:'$imageappendurl${ movie.posterpath}',
                 //     title: movie.title??'No title provided');